using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Beautify.Universal;
[ExecuteInEditMode]
public class BeutifyValue : MonoBehaviour
{
     [Range(0f, 1f)]
    [SerializeField] float LUT_val;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        BeautifySettings.settings.lutIntensity.value = LUT_val;
    }
}
