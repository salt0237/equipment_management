# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Person.create(name:'Taro', age:38, mail:'taro@yamada')
#Person.create(name:'Hanako', age:34, mail:'Hanako@flower')
#Person.create(name:'sachiko', age:56, mail:'sachiko@happy')

MachineListNew.create(hard:'PC',CPU:'Intel Core i7',HDD:'1TB(RAID:1)',memory:'16GB',OS:'windows10',IP:'DHCP',grade:'B4',namber:'B17T2064B',name:'谷口正哉',place:'3811',power:'',drive:'',day:'2016/3/15',memo:'共用PC、CPUが古いためVMwareが動かない')

Furniture.create(name:'PC',number:'105-000042219-000',person:'正木洸太',place:'3809',day:'2021/9/27',memo:'価格230,200円' );
License.create(license_id:'win7v1-1',name:'windows7',number:'21',license_key:'HXK6W-JYBFH-FRKB2-K6KQ8-7T7XF',memo:'計算機A');
Consumable.create(name:'ラズパイ',place:'3809',memo:'備品棚に40個(適当)');