# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create

sb_account = SbAccount.create
user.sb_accounts << sb_account

dev1 = Device.create(secret_key: "ciao1")
dev2 = Device.create(secret_key: "ciao2")
dev3 = Device.create(secret_key: "ciao3")

action1 = Action.create
action1.test "traguardo raggiunto"

goal1 = Goal.create(sb_account: sb_account, reached: true)
goal1.actions << action1
goal1.save

sb_account.goals << goal1
sb_account.save
