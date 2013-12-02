using UnityEngine;
using System.Collections;

#if UNITY_EDITOR || UNITY_WEBPLAYER
using Movement_Control = Movement_Desktop ;
#elif UNITY_ANDROID || UNITY_WP8 || UNITY_IPHONE
using Movement_Control = Movement_Mobile ;
#endif

public class Movement_Controller : MonoBehaviour {

		[SerializeField] private float _speed_Sensitivity = 1f ;
		[SerializeField] private float _straffing_Sensitivity = 1f ;
		[SerializeField] private bool _isKeyboard = false ;

		public static Transform playerPos ;
		public static float speedSensitivity ;
		public static float strafSensitivity ;
		public static bool isKeyboard ;

		private static bool is_Intro = false ;

		public static void Set_IntroTo( bool val ){
				is_Intro = val ;
				Movement_Control.Init_Module() ;
		}

		private void Start() {

				is_Intro = true ;
				speedSensitivity = _speed_Sensitivity ;
				strafSensitivity = _straffing_Sensitivity ;
				isKeyboard = _isKeyboard ;

				playerPos = transform ;

		}

		public void StartMoving() {
				is_Intro = false ;
		}

		private void Update () {
				if( is_Intro ) return ;

				Movement_Control.Movement_Update() ;
		} 
}
