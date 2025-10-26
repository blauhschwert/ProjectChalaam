class_name PlayerState
extends State

const IDLE = "Idle"
const FALLING = "Falling"
const JUMPING = "Jumping"
const DUCK = "Duck"

const GRAVITY : int = 1800 
const JUMP_SPEED : int = 435 

var player : Player

@onready var anim : AnimatedSprite2D = %AnimatedSprite2D
@onready var run_col : CollisionShape2D = %Run
@onready var duck_col : CollisionShape2D = %Duck

func _ready() -> void:
	await owner.ready
	player = owner as Player
	assert(player != null,
	"The JadeState state type must be used only in the player/jade scene.
	It needs the owner to be a Player node")
	
