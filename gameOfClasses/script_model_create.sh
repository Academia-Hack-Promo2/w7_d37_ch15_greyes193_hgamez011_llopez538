rails g model player name:string{20} age:integer{2} vitality:integer{6} lifePoints:integer{6} hability:string defPoints:integer{4} atkPoints:integer{4}

rails g model character pType:string{1}  vitality:integer{6} lifePoints:integer{6} hability:string level:integer{2} defPoints:integer{4} atkPoints:integer{4} player:references

rails g model fight vitality1:integer{6} vitality2:integer{6} winner:integer retired:boolean character:references

rails g model attack aType:string name:string damage:integer{4} character:references

rails g model weapon name:string wType:string damage:integer{4} defence:integer{3} price:integer{4} 

rails g model armor name:string pType:integer{1} wType:string damage:integer{3} defence:integer{4} price:integer{4}

rails g model character_weapons character:references weapon:references
rails g model character_armors character:references armor:references