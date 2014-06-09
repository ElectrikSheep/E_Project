using UnityEngine;
using System.Collections;

public class Load_Scene : MonoBehaviour {

		[SerializeField] private string sceneName ;

		private void OnPress( bool isPressed ){
				if(isPressed ) return ;

				Debug.Log("Pressed");
				Application.LoadLevel( sceneName );	
		}
}
