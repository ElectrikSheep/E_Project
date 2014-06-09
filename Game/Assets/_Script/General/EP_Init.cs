using UnityEngine;
using System.Collections;

public class EP_Init : MonoBehaviour
{

		// Use this for initialization
		void Start ()
		{
				DontDestroyOnLoad (gameObject);
				Application.LoadLevel ("Menu");
		}
	
}
