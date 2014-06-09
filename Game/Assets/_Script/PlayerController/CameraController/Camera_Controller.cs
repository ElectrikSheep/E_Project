using UnityEngine;
using System.Collections;


#if UNITY_EDITOR || UNITY_WEBPLAYER
using Camera_Control = Camera_Desktop ;
#elif UNITY_ANDROID || UNITY_WP8
using Camera_Control = Camera_Mobile ;
#elif UNITY_IPHONE
using Camera_Control = Camera_Mobile ;
#endif

public class Camera_Controller : MonoBehaviour {

		[SerializeField] private float X_liberty = 360 ;
		[SerializeField] private float Y_liberty = 60 ;
		[SerializeField] private bool _hideCursor ;

		public static Transform head ;

		public static bool HideCursor ;

		public static float max_X = -360 ;
		public static float min_X = 360 ;

		public static float max_Y = -60f;
		public static float min_Y = 60f;

	private void Start() {
				max_X = X_liberty ;
				min_X = - X_liberty ;

				max_Y = Y_liberty ;
				min_Y = -Y_liberty ;

				HideCursor = _hideCursor ;

				head = transform ;
		Camera_Control.Initialisation() ;
	}

		// We want to do the update on the lateUpdate loop, to make sure we have the latest gyroscope information 
	private void LateUpdate() {
		Camera_Control.Camera_LateUpdate() ;
	}


}