module ApplicationHelper
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def interess_list(user)
		list = Array.new
		list << "GvG" if user.gvg
		list << "PK" if user.pk
		list << "ZvZ" if user.zvz
		list << "Gathering" if user.gathering
		list << "Dungeon" if user.dungeons
		list << "Crafting" if user.crafting
		list << "Farming" if user.farming
		list << "Construir Territorios" if user.construct
		list << "Alimentação de Territorios" if user.territory_feed
		list << "Guerra de Castelo" if user.castle
		list << "Barracas" if user.warcamp

		if list.size == 1 
			return list[0] + "."
		else 
			result = ""
			for i in 0..list.size - 2
				result = result + list[i] + ","
			end
			 result = result + list[list.size - 1] + "."
		end
	end
end
