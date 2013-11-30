using UnityEngine;
using System.Collections;

public class UI_Controller : MonoBehaviour {

		[SerializeField] private UILabel displayedDistance ;


		private void Update() {
				displayedDistance.text = Get_Distance()+" meters";
		}

		private int Get_Distance () {
				return (int)(Vector3.Distance( Vector3.zero, Character_Controller._position )/10f) ;
		}
}
