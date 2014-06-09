using UnityEngine;
using System.Collections;

public class ES_EnemyController : MonoBehaviour
{

		private enum STATE
		{
				SPAWNING,
				WALKING,
				ATTACKING,
				DEAD,
				IDLE
		}
		// GROAN
		// ATTACK
		// DIE

		private ES_HordeController HordeManager;
		private Transform PlayerPosition;
		[SerializeField] private Animation AnimController;
		[SerializeField] private float speedModifier = 1f;
		[SerializeField] private AudioClip[] _sfx;
		private AudioSource _as;
		private float movementSpeed = .01f;
		private float distance = 0f;
		[SerializeField] private int lifePoints = 1;
		private STATE currentState;
		private int index;

		/// <summary>
		/// Initialise the Zombie with an Index and The main Manager
		/// </summary>
		/// <param name="index">The UNIQUE index of the zombie</param>
		/// <param name="Necromancer">The horde_manager keeping track of the objects</param>
		public void Initialise_With (int new_index, ES_HordeController Necromancer)
		{
				Debug.Log ("Properly Set up");
				index = new_index;
				HordeManager = Necromancer;
		}

		public void ACTION_EmergencyDisable ()
		{
				HordeManager.UnUse_Enemy (index);
				AnimController.Stop ();
				transform.parent = HordeManager.transform;
				transform.localPosition = Vector3.zero;
				currentState = STATE.IDLE;
		}

		public void Enable_AtPosition (Vector3 _newPos)
		{
				transform.position = _newPos;
				transform.LookAt (Vector3.zero, transform.up);
				AnimController.Play ("intro");
				Play_AudioClip (_sfx [3]);
				currentState = STATE.SPAWNING;
		}

		private void Start ()
		{
				currentState = STATE.IDLE;
				_as = audio;

				PlayerPosition = Movement_Controller.playerPos;
				Debug.Log (PlayerPosition.name);
		}

		private void Update ()
		{
				switch (currentState) {
				case STATE.ATTACKING:
						Check_ForEndOfGame ();
						break;
				case STATE.WALKING:
						WalkCycle ();
						Check_ForRandomNoise ();
						Check_ForKillAttack ();
						break;
				case STATE.SPAWNING:
						Check_EndEntranceAnimation ();
						break;
				case STATE.DEAD:
						Check_ForEndOfLife ();
						break;
				}
		}

		private void WalkCycle ()
		{
				transform.LookAt (PlayerPosition, transform.up);
				transform.Translate (
						0f, 0f, movementSpeed, Space.Self);
		}

		private void Check_EndEntranceAnimation ()
		{
				if (!AnimController.IsPlaying ("intro")) {
						currentState = STATE.WALKING;
						AnimController.Play ("walking");
				}
		}

		private void Check_ForEndOfLife ()
		{

				HordeManager.UnUse_Enemy (index);
				currentState = STATE.IDLE;
				/* TO RE ENABLE LATER 
				if (!AnimController.isPlaying) {
						HordeManager.UnUse_Enemy (index);
						currentState = STATE.IDLE;
				}
				*/
		}

		private void Check_ForEndOfGame ()
		{
				currentState = STATE.IDLE;
				ES_GameController.Instance.MANAGER_TriggerEndOfGame ();
		}

		private void Check_ForKillAttack ()
		{
				distance = Vector3.Distance (transform.position, PlayerPosition.position);
				if (distance < HordeManager.KILLING_DISTANCE) {
						ES_GameController.Instance.MANAGER_TriggerEndOfGame ();
				}
		}

		public void Decrease_LifePoint (int damage)
		{
				Message_ReceiveDamage (damage, false);
		}

		public void Message_ReceiveDamage (int damage, bool critical)
		{
				if (currentState == STATE.DEAD)
						return;

				ES_GameController.Instance.MANAGER_TargetHit (lifePoints * 10, critical);
				damage = critical ? damage * 2 : damage;
				if (damage >= lifePoints) {
						currentState = STATE.DEAD;
						//	AnimController.Play ("killed");
						ES_GameController.Instance.MANAGER_IncrementDeathCount ();
						Play_AudioClip (_sfx [2]);
				} else {
						lifePoints -= damage;
				}
		}

		private void Check_ForRandomNoise ()
		{
				if (_as.isPlaying)
						return;
				if (Random.Range (0, 100) > 80)
						Play_AudioClip (_sfx [0]);
		}

		private void Play_AudioClip (AudioClip _ac)
		{
				_as.Stop ();
				_as.clip = _ac;
				_as.Play ();
		}
}