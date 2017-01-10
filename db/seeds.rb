# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Permition.create(id: 1, name: 'Fazer Comunicado', permition: 4)
Permition.create(id: 2, name: 'Alterar Permissões', permition: 7)
Permition.create(id: 3, name: 'Criar novo Core GvG', permition: 5)
Permition.create(id: 4, name: 'Criar novo topico de discussão', permition: 1)
Permition.create(id: 5, name: 'Alterar funções na guild', permition: 8)
Permition.create(id: 6, name: 'Criar novo evento', permition: 4)
Permition.create(id: 7, name: 'Gerenciar itens', permition: 8)
Permition.create(id: 8, name: 'Criar topico de mídia', permition: 1)
Permition.create(id: 9, name: 'Cadastrar tipo de jogador', permition: 8)
Permition.create(id: 10, name: 'Cadastrar roles de personagens', permition: 8)
Permition.create(id: 11, name: 'Deletar postagens e comentários', permition: 8)
Permition.create(id: 12, name: 'Liberar membros', permition: 5)
Permition.create(id: 13, name: 'Fazer recrutamento', permition: 5)
Permition.create(id: 14, name: 'Cadastrar tipo de mídia', permition: 8)

GuildRole.create(id: 1, name: 'Recruta', function: '', permition: 1)
GuildRole.create(id: 2, name: 'Membro', function: '', permition: 2)
GuildRole.create(id: 3, name: 'Guarda', function: '', permition: 3)
GuildRole.create(id: 4, name: 'Oficial', function: '', permition: 4)
GuildRole.create(id: 5, name: 'Mestre de Guerra', function: '', permition: 5)
GuildRole.create(id: 6, name: 'Tesoureiro', function: '', permition: 6)
GuildRole.create(id: 7, name: 'Braço Direito', function: '', permition: 7)
GuildRole.create(id: 8, name: 'Lider', function: '', permition: 8)

User.create(email: 'administrador@honornglory.com', status: 1, guild_role_id: 8, password: "12345678", password_confirmation: "12345678", nick: "Admin")