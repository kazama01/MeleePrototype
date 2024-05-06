using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class ChangeMaterialFloat : MonoBehaviour
{
	private enum graphicType
	{
		Image,
		Renderer
	}
	
	[SerializeField] private graphicType typeShader;
	[Space(10)]
	[SerializeField]private GameObject objectS1;
	private Material material1;
	[SerializeField]private string property1;
	[SerializeField] private float number1ToSet;
	[SerializeField] private float min1Val;
	[SerializeField] private float max1Val;
	[Space(10)]
	[SerializeField]private GameObject objectS2;
	private Material material2;
	[SerializeField]private string property2;
	[SerializeField] private float number2ToSet;
	[SerializeField] private float min2Val;
	[SerializeField] private float max2Val;
	
	
	[Header("Percentage control")]
	[SerializeField] private TMP_Text textPercentage;
	[SerializeField] private int m_Percentage ;
	[Tooltip("set the max amount if got leveled up")]
	[SerializeField] private int maxPercentageVal = 100;
	[SerializeField] private TMP_Text textMaxPercentage;
	
    void Update()
    {
	    if(m_Percentage>maxPercentageVal)m_Percentage = maxPercentageVal;
	    if(m_Percentage<0)m_Percentage = 0;
	    
	    if (objectS1 != null)
	    {
	    if(typeShader == graphicType.Image)
		    material1 = objectS1.GetComponent<Image>().material;
	    if(typeShader == graphicType.Renderer)
		    material1 = objectS1.GetComponent<Renderer>().material;
		    
		    number1ToSet = ((max1Val-min1Val)*m_Percentage/maxPercentageVal)+min1Val;
	       material1.SetFloat(property1,number1ToSet);
	    }
	    
	    if(objectS2 != null)
	    {
	    	if(typeShader == graphicType.Image)
		    	material2 = objectS2.GetComponent<Image>().material;
		    if(typeShader == graphicType.Renderer)
			    material2 = objectS2.GetComponent<Renderer>().material;
		    
		    number2ToSet = ((max2Val-min2Val)*m_Percentage/maxPercentageVal)+min2Val;
		    material2.SetFloat(property2,number2ToSet);
	    }
	    if(textPercentage != null)
		    textPercentage.text = m_Percentage.ToString();
	    if(textMaxPercentage != null)
		    textMaxPercentage.text = maxPercentageVal.ToString()+"/";
	    
    }
}
