def eh_init
	console.log("init from scripts.rb")
end

def eh_SetSwitches
    @data[0001] = true
    #DEBUG Switch
    @data[0003] = false
end

def eh_LeaveHomeFirstTime
	#$game_variables[3] - son
	#$game_variables[4] - wife
	#$game_variables[5] - daughter
	
	son = $game_variables[3]
	wife = $game_variables[4]
	daughter = $game_variables[5]
	
	$game_variables[100] = "NICHTS"
	
	if son == 0 and wife == 0 and daughter == 0
		$game_variables[100] = "Ich kann jetzt nicht gehen, ich \nhabe meine Familie noch nicht gefunden!"
	end
	if son == 0 and wife == 0 and daughter == 1
		$game_variables[100] = "Ich kann jetzt nicht gehen, ich \nhabe meinen Sohn und meine Frau noch nicht gefunden!"
	end
	if son == 0 and wife == 1 and daughter == 0
		$game_variables[100] = "Ich kann jetzt nicht gehen, ich \nhabe meinen Sohn und meine Tochter \nnoch nicht gefunden!"
	end
	if son == 0 and wife == 1 and daughter == 1
		$game_variables[100] = "Ich kann jetzt nicht gehen, ich \nhabe meinen Sohn noch nicht gefunden!"
	end
	if son == 1 and wife == 0 and daughter == 0
		$game_variables[100] = "Ich kann jetzt nicht gehen, ich \nhabe meine Frau und meine Tochter noch nicht gefunden!"
	end	
	if son == 1 and wife == 0 and daughter == 1
		$game_variables[100] = "Ich kann jetzt nicht gehen, ich \nhabe meine Frau noch nicht gefunden!"
	end
	if son == 1 and wife == 1 and daughter == 0
		$game_variables[100] = "Ich kann jetzt nicht gehen, ich \nhabe meine Tochter noch nicht gefunden!"
	end
	if son == 1 and wife == 1 and daughter == 1
		$game_variables[100] = "Ich kann jetzt nicht gehen, ich \nhabe meine Frau noch nicht gefunden!"
	end
end


  def eh_GetDex(value)
    actor = $game_party.menu_actor
	console.log(actor.agi)
	dex = actor.agi
	if dex >= value
	console.log("true")
		return true
	else
	console.log("false")
		return false
	end
  end
