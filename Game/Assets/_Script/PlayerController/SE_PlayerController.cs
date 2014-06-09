using UnityEngine;
using System.Collections;

public class SE_PlayerController : MonoBehaviour
{

		[SerializeField] private Animation _animation;
		[SerializeField] private ParticleSystem _fireEffect;
		[SerializeField] private ParticleSystem _confettis;

		[SerializeField] private AudioClip[] _voiceOver;

		private bool is_Shooting = false;
		private AudioSource _as;


		[HideInInspector] public static Vector3 _position = Vector3.zero;


		private Ray _ShotGunCast;
		private RaycastHit hitPosition;
		private Vector2 _middleScreenPoint;



		private void Start ()
		{
				_as = transform.audio;

				_middleScreenPoint = new Vector2 (Screen.width / 2f, Screen.height / 2f);
				is_Shooting = false;
				StartCoroutine (PlayEntrance_Animation ());
		}

		public void Start_Game ()
		{
				StartCoroutine (PlayEntrance_Animation ());
		}

		public void Stop_Game ()
		{
				Movement_Controller.Set_IntroTo (true);
				transform.position = Vector3.zero;
				this.enabled = false;
		}

		private IEnumerator PlayEntrance_Animation ()
		{
				_animation ["intro"].wrapMode = WrapMode.Once;
				_animation.Play ("intro");

				while (_animation.isPlaying) {
						yield return null;
				}

				Movement_Controller.Set_IntroTo (false);

				_animation ["walk"].wrapMode = WrapMode.Loop;
				_animation.Play ("walk");

				is_Shooting = false;
		}


		public IEnumerator Play_ShootAnimation ()
		{
				_fireEffect.Stop ();
				_animation ["shoot"].speed = 2f;
				_animation ["shoot"].wrapMode = WrapMode.Once;
				_animation.CrossFade ("shoot");

				yield return new WaitForSeconds (.5f / _animation ["shoot"].speed);

				_fireEffect.Play ();
				_ShotGunCast = Camera.main.ScreenPointToRay (_middleScreenPoint);

				if (Physics.Raycast (_ShotGunCast, out hitPosition, 10000f, 1 << 9)) {
						Debug.Log ("HIT:" + hitPosition.collider.name);
						//Damage_Target( hitPosition.collider.gameObject );
						_confettis.transform.position = hitPosition.point;
						hitPosition.collider.gameObject.SendMessage ("Decrease_LifePoint", 1, SendMessageOptions.DontRequireReceiver);
						_confettis.Play ();
						PlayAudio ();
				}

				while (_animation.isPlaying) {
						yield return null;
				}

				_animation.Play ("walk");
				is_Shooting = false;
		}

		private void Update ()
		{
		
				if (Input.GetMouseButtonDown (0)) {
						Fire ();
				}
				_position = transform.position;
		}

		private void Fire ()
		{
				if (is_Shooting)
						return;

				is_Shooting = true;
				StartCoroutine (Play_ShootAnimation ());

		}


		private void PlayAudio ()
		{
				if (_as.isPlaying)
						return;

				if (Random.Range (1, 10) > 7) {
						_as.clip = _voiceOver [Random.Range (0, _voiceOver.Length)];
						_as.Play ();
				}
		}

}
