using UnityEngine;
using System.Collections;


public class Ground_Controller : MonoBehaviour {

		[SerializeField] private Transform playerPos;
		[SerializeField] private Transform[] planes ;

		[SerializeField] private float planeSize_Meters = 10f ;
		private float half_Size;

		int current_GridX, current_GridY ;
		int previous_GridX, previous_GridY ;

		private int current_Tile = 0;



		private Vector3 futurePlanePos ;

		private void Start() {
				current_GridX = current_GridY = 0 ;
				current_Tile = 0;

				half_Size = planeSize_Meters/2f ;

				futurePlanePos = Vector3.zero ;

				for(int i=0; i<planes.Length; i++ ){
						planes[i].position = futurePlanePos ;
						futurePlanePos.z += planeSize_Meters ;
				}
				futurePlanePos.z -= planeSize_Meters ;
		}


		private void Update () {
				CheckFor_PlayerPosition() ;
		}

		private void CheckFor_PlayerPosition() {
				if( playerPos.position.x >0f ) {
						current_GridX = (int)((playerPos.position.x+half_Size)/planeSize_Meters) ;
				}
				else {
						current_GridX = (int)((playerPos.position.x-half_Size)/planeSize_Meters) ;
				}
				current_GridY =(int)((playerPos.position.z+half_Size)/planeSize_Meters) ;

				if( current_GridX != previous_GridX ){
						futurePlanePos.x = 
								current_GridX>previous_GridX ? 
								futurePlanePos.x+planeSize_Meters :
								futurePlanePos.x-planeSize_Meters;
				}
				if( current_GridY != previous_GridY ){
						futurePlanePos.z += planeSize_Meters ;
						planes[current_Tile].position = futurePlanePos ;
						current_Tile = current_Tile == planes.Length-1 ? 0 : current_Tile +1 ;
				}

				previous_GridX = current_GridX ;
				previous_GridY = current_GridY ;
		}
}
