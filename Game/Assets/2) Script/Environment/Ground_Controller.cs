using UnityEngine;
using System.Collections;


public class Ground_Controller : MonoBehaviour {

		[SerializeField] private Transform playerPos;
		[SerializeField] private Transform[] planes ;

		int current_GridX, current_GridY ;
		int previous_GridX, previous_GridY ;

		private int current_Tile = 0;



		private Vector3 futurePlanePos ;

		private void Start() {
				current_GridX = current_GridY = 0 ;
				current_Tile = 0;

				futurePlanePos = Vector3.zero ;

				for(int i=0; i<planes.Length; i++ ){
						planes[i].position = futurePlanePos ;
						futurePlanePos.z += 10f ;
				}
				futurePlanePos.z -= 10f ;
		}


		private void Update () {
				CheckFor_PlayerPosition() ;
		}

		private void CheckFor_PlayerPosition() {
				if( playerPos.position.x >0f ) {
						current_GridX = (int)((playerPos.position.x+5f)/10f) ;
				}
				else {
						current_GridX = (int)((playerPos.position.x-5f)/10f) ;
				}
				current_GridY =(int)((playerPos.position.z+5f)/10f) ;

				if( current_GridX != previous_GridX ){
						futurePlanePos.x = current_GridX>previous_GridX ? futurePlanePos.x+10f :futurePlanePos.x-10f;
				}
				if( current_GridY != previous_GridY ){
						futurePlanePos.z += 10f ;
						planes[current_Tile].position = futurePlanePos ;
						current_Tile = current_Tile == planes.Length-1 ? 0 : current_Tile +1 ;
				}

				previous_GridX = current_GridX ;
				previous_GridY = current_GridY ;
		}
}
