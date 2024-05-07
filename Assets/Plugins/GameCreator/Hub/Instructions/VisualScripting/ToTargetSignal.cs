using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using GameCreator.Runtime.Common;
using GameCreator.Runtime.VisualScripting;
using UnityEngine;

namespace GameCreator.Runtime.VisualScripting.TwoCateCode
{
    
    
    [Version(2, 0, 1)]
    [Title("Emit To Target Signal")]
    [Description("Emits a specific signal, which is captured by other listeners")]
    [Category("Visual Scripting/Emit To Target Signal")]
    [Parameter("Target", "The Target who response to the signal")]
    [Parameter("Signal", "The signal name emitted")]
    [Parameter("To Target", "If to the target")]
    [Parameter("To Parent", "If to the target's parent")]
    [Parameter("To Children", "If to the target's children")]
    [Keywords("Event", "Raise", "Command", "Fire", "Trigger", "Dispatch", "Execute")]
    [Example("Works with the event: On Receive To Target Signal")]
    [Image(typeof(IconSignal), ColorTheme.Type.Red)]
    [Serializable]
    public class ToTargetSignal : Instruction
    {
        // MEMBERS: -------------------------------------------------------------------------------

        [SerializeField] private PropertyGetGameObject m_Target;
        [SerializeField] private Signal m_Signal;

        [Space] [SerializeField] private PropertyGetBool m_toTarget = new PropertyGetBool(true);
        [SerializeField] private PropertyGetBool m_toParent = new PropertyGetBool(false);
        [SerializeField] private PropertyGetBool m_toChildren = new PropertyGetBool(false);


        // PROPERTIES: ----------------------------------------------------------------------------

        public override string Title
        {
            get
            {
                string signal = this.m_Signal.ToString();
                return string.IsNullOrEmpty(signal) ? $"Signal (none)" : $"Signal '{signal} to {m_Target}'";
            }
        }

        protected override Task Run(Args args)
        {
            var target = m_Target.Get(args);
            if (target == null) return DefaultResult;

            SignalArgs data = new SignalArgs(this.m_Signal.Value, args.Self);
            SignalsEx.Emit(target, data, m_toTarget.Get(args), m_toChildren.Get(args), m_toParent.Get(args));

            return DefaultResult;
        }
    }
    
    [Title("On Receive To Target Signal")]
    [Category("Logic/On Receive To Target Signal")]
    [Description("Executed when receiving a specific signal name from the dispatcher")]
    [Image(typeof(IconSignal), ColorTheme.Type.Red)]
    [Keywords("Event", "Command", "Fire", "Trigger", "Dispatch", "Execute")]
    [Serializable]
    public class EventOnReceiveToTargetSignal : Event
    {
        [SerializeField] private Signal m_Signal;

        protected override void OnEnable(Trigger trigger)
        {
            base.OnEnable(trigger);
            SignalsEx.Subscribe(trigger, m_Signal.Value);
        }

        protected override void OnDisable(Trigger trigger)
        {
            base.OnDisable(trigger);
            SignalsEx.Unsubscribe(trigger, m_Signal.Value);
        }

        protected override void OnReceiveSignal(Trigger trigger, SignalArgs args)
        {
            base.OnReceiveSignal(trigger, args);
            if (this.m_Signal.Value != args.signal) return;
            _ = this.m_Trigger.Execute(args.invoker);
        }
    }


    ///////////////////////////////////
    /// Copy from GC2 and modified
    ///////////////////////////////////
    public static class SignalsEx
    {
        [NonSerialized] private static Dictionary<PropertyName, List<ISignalReceiver>> SIGNALS =
            new Dictionary<PropertyName, List<ISignalReceiver>>();

        // INITIALIZERS: --------------------------------------------------------------------------

#if UNITY_EDITOR

        [UnityEditor.InitializeOnEnterPlayMode]
        public static void InitializeOnEnterPlayMode()
        {
            SIGNALS = new Dictionary<PropertyName, List<ISignalReceiver>>();
        }

#endif

        // PUBLIC METHODS: ------------------------------------------------------------------------

        /// <summary>
        /// Emits an event with the specified Signal <paramref name="args"/>. If any receivers
        /// are listening, these will be invoked in order. 
        /// </summary>
        public static void Emit(GameObject target, SignalArgs args, bool toTarget, bool toChildren, bool toParent)
        {
            if (ApplicationManager.IsExiting) return;
            if (!SIGNALS.TryGetValue(args.signal, out List<ISignalReceiver> receivers))
            {
                return;
            }

            foreach (ISignalReceiver receiver in receivers)
            {
                var r = receiver as Trigger;
                if (toTarget && r.gameObject == target)
                    receiver.OnReceiveSignal(args);
                else if (toChildren && r.gameObject != target && r.gameObject.transform.IsChildOf(target.transform))
                    receiver.OnReceiveSignal(args);
                else if (toParent && r.gameObject != target && target.transform.IsChildOf(r.gameObject.transform))
                    receiver.OnReceiveSignal(args);
            }
        }

        // SUBSCRIPTION METHODS: ------------------------------------------------------------------

        /// <summary>
        /// Starts listening for the specific <paramref name="signal"/>. When that signal is raised
        /// it invokes the <paramref name="source"/>.
        /// </summary>
        /// <param name="source">The implementing object that listens to the signal</param>
        /// <param name="signal">The signal to listen</param>
        public static void Subscribe(ISignalReceiver source, PropertyName signal)
        {
            if (ApplicationManager.IsExiting) return;
            if (!SIGNALS.TryGetValue(signal, out List<ISignalReceiver> receivers))
            {
                receivers = new List<ISignalReceiver>();
                SIGNALS.Add(signal, receivers);
            }

            foreach (ISignalReceiver receiver in receivers)
            {
                if (receiver == source) return;
            }

            receivers.Add(source);
        }

        /// <summary>
        /// Stops the object <paramref name="source"/> implementing the interface from listening
        /// the <paramref name="signal"/> 
        /// </summary>
        /// <param name="source"></param>
        /// <param name="signal"></param>
        public static void Unsubscribe(ISignalReceiver source, PropertyName signal)
        {
            if (ApplicationManager.IsExiting) return;
            if (!SIGNALS.TryGetValue(signal, out List<ISignalReceiver> receivers)) return;
            receivers.Remove(source);

            if (receivers.Count > 0) return;
            SIGNALS.Remove(signal);
        }
    }
}