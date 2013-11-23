using UnityEngine;
using System.Collections;

public class Arms_Controller : MonoBehaviour {

		[SerializeField] private Transform _headRotation ;

	
		private Vector3 _tempVector = Vector3.zero ;
		private void Update() {
				_tempVector.y = _headRotation.localEulerAngles.y;
				transform.localEulerAngles = _tempVector ;
		}
}
