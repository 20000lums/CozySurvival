extends Node2D
class Item:
	func _init(stacksize, Type):
		self.stacksize = stacksize
		self.Type = Type
var InventoryOpen = false
var PassPoint 
var Inventory = [null,null,null,null,null]
var InHand
var Selected
var SlotNotFound
func Item_Switch(slot):
	PassPoint = Inventory[slot]
	Inventory[slot] = InHand
	InHand = PassPoint

func AddItem(name, count):
	for item in Inventory:
		if item != null and item.Type == name:
			item.stacksize += count
			return true
	if Inventory.has(null):
		Inventory[Inventory.find(null)] = Item.new(count, name)
		return true
	return false
		
func process(delta):
	if Input.is_action_just_pressed("left click"):
		get_parent().ItemUsed(Inventory[Selected].Type, Inventory[Selected].stacksize)
	pass
func _on_Button_pressed():
	if(InventoryOpen):
		Item_Switch(0)
	else:
		Selected = 0
func _on_Button2_pressed():
	if(InventoryOpen):
		Item_Switch(1)
	else:
		Selected = 1
func _on_Button3_pressed():
	if(InventoryOpen):
		Item_Switch(2)
	else:
		Selected = 2
func _on_Button4_pressed():
	if(InventoryOpen):
		Item_Switch(3)
	else:
		Selected = 3
func _on_Button5_pressed():
	if(InventoryOpen):
		Item_Switch(4)
	else:
		Selected = 4
		
#detects wether or not the mouse is on one of the inventory buttons.
var OnButton = false

func _on_Button_mouse_entered():
	OnButton = true
func _on_Button2_mouse_entered():
	OnButton = true
func _on_Button3_mouse_entered():
	OnButton = true
func _on_Button4_mouse_entered():
	OnButton = true
func _on_Button5_mouse_entered():
	OnButton = true

func _on_Button_mouse_exited():
	OnButton = false
func _on_Button2_mouse_exited():
	OnButton = false
func _on_Button3_mouse_exited():
	OnButton = false
func _on_Button4_mouse_exited():
	OnButton = false
func _on_Button5_mouse_exited():
	OnButton = false
	
#do thing when button clicked. 

