using UnityEngine;
using System.Collections;

#if UNITY_EDITOR || UNITY_WEBPLAYER
using Movement_Control = Movement_Desktop ;
#elif UNITY_ANDROID || UNITY_WP8 || UNITY_IPHONE
using Movement_Control = Movement_Mobile ;
#endif

public class Movement_Controller : MonoBehaviour {

		[SerializeField] private float speed_Sensitivity = 1f ;
		[SerializeField] private float straffing_Sensitivity = 1f ;
		[SerializeField] private bool isKeyboard = false ;

		private bool is_Intro = false ;

		private void Start() {
				is_Intro = false ;
				Movement_Control.Init_Controller( speed_Sensitivity, straffing_Sensitivity, transform, isKeyboard ) ;
		}

		public void StartMoving() {
				is_Intro = false ;
		}

		private void Update () {
				if( is_Intro ) return ;

				Movement_Control.Movement_Update() ;
		} 
}
