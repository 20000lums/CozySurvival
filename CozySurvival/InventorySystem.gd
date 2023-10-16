extends Node2D
class Item:
	func _init(stacksize):
		self.stacksize = stacksize
var InventoryOpen = false
var Empty = Item.new(0)
var PassPoint 
var Inventory = [Empty,Empty,Empty,Empty,Empty]
var InHand
var Selected
func Item_Switch(slot):
	PassPoint = Inventory[slot]
	Inventory[slot] = InHand
	InHand = PassPoint

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
