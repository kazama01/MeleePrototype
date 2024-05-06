using System.Collections;
using System.Collections.Generic;
using UnityEngine;
 [ExecuteInEditMode]
public class FloatChange : MonoBehaviour
{
   
     public Material targetMaterial;
     public Material targetMaterial2;
    public string propertyName;
     public string propertyName2;
    
     [Range(0f, 1f)]
    [SerializeField] float Value;

    [Range(0f, 1f)]
    [SerializeField] float Value2;
   

    private void Awake() {
         targetMaterial.SetFloat(propertyName, 0f);
         targetMaterial2.SetFloat(propertyName, 0f);
    }
   
    void Update()
    {
        targetMaterial.SetFloat(propertyName, Value);
        targetMaterial2.SetFloat(propertyName2, Value2);
       
    }
}
