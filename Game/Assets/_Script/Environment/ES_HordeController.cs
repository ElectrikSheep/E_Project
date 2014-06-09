using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class ES_HordeController : MonoBehaviour
{


		private Transform _playerPos;
		//
		//
		//
		public float KILLING_DISTANCE = 5f;
		public bool manage_OverFlow = false;
		// The array of enemy
		private ES_EnemyController[] EnemyArray;
		// to know which is the next available Idle Enemy
		private BitArray idle_Enemy;
		private int next_Available = 0;
		//
		// Game Lagorithm
		private int currentZombieInGame = 0;
		private int zombieKilled = 0;
		//
		//
		//
		//
		// Use this for initialization
		protected void Start ()
		{

				EnemyArray = new ES_EnemyController [transform.childCount];
				int i = 0;
				foreach (ES_EnemyController _dc in GetComponentsInChildren<ES_EnemyController>()) {
						EnemyArray [i] = _dc;
						EnemyArray [i].Initialise_With (i, this);
						i++;
				}
				idle_Enemy = new BitArray (EnemyArray.Length, true);
				zombieKilled = 0;
				_playerPos = Movement_Controller.playerPos;
		}

		public void Reset_Difficulty ()
		{
				zombieKilled = 0;
				for (int i = 0; i < idle_Enemy.Length; i++) {
						if (idle_Enemy [i] == false) { 
								EnemyArray [i].ACTION_EmergencyDisable ();
						}
				}
		}

		public void Raise_NewEnemy ()
		{
				Use_Enemy ();
		}

		private void Use_Enemy ()
		{
				// Check if we have any free zombies 
				if (next_Available == -1) {
						return;
				}
				idle_Enemy [next_Available] = false;
				EnemyArray [next_Available].Enable_AtPosition (Get_RandomPosition ());
				// More zombies, games gets harder
				currentZombieInGame++;
				next_Available = Get_NextAvailable ();
		}

		private int Get_NextAvailable ()
		{
				while (!idle_Enemy [next_Available]) {
						next_Available++;
						if (next_Available == idle_Enemy.Length)
								return -1;
				}
				return next_Available;
		}

		public void UnUse_Enemy (int _deadEnemy)
		{
				if (next_Available < 0)
						next_Available = _deadEnemy;
				else
						next_Available = next_Available > _deadEnemy ? _deadEnemy : next_Available;
				idle_Enemy [_deadEnemy] = true;
				// Less zombies, games gets easier
				currentZombieInGame--;
		}

		public void Check_ForZombieSpawn (float time)
		{
				if (currentZombieInGame == 0)
						Use_Enemy ();
				int difficulty = (int)((float)time / 5f);
				if (currentZombieInGame < difficulty) {
						Use_Enemy ();
				}
		}

		private Vector3 Get_RandomPosition ()
		{
				Debug.Log ("Create new zombie");

				float angle = Random.Range (-10f, 10f);
				float distance = Random.Range (80f, 150f);

				return new Vector3 (
						_playerPos.position.x + angle,//distance * Mathf.Cos( angle ),
						0f,
						_playerPos.position.z + distance);//* Mathf.Sin( angle ) );
		}

}
