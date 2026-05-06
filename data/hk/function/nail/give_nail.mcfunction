# === Old Nail as Carrot on a Stick (with Sword Texture) ===
give @s minecraft:carrot_on_a_stick[\
  custom_name={text:"Old Nail",  italic:false, color:"gold"},\
  lore=[\
    {text:"The Knight's trusted blade", italic:false, color:"gray"}],\
  attack_range={max_reach:3.0},\
  attribute_modifiers=[\
    {type:"minecraft:attack_damage", slot:"any", id:"hk.nail.damage", amount:5, operation:"add_value"},\
    {type:"minecraft:attack_speed", slot:"any", id:"hk.nail.speed", amount:0.5, operation:"add_value"},\
    {type:"minecraft:attack_knockback", slot:"any", id:"hk.nail.knockback", amount:1.5, operation:"add_value"}],\
  rarity=epic,\
  unbreakable={},\
  custom_data={hk_nail:1}] 1