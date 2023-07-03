import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mla extends StatefulWidget {
  const Mla({Key? key}) : super(key: key);

  @override
  State<Mla> createState() => _MlaState();
}

class _MlaState extends State<Mla> {
  @override

  String _selectedState="Andhra Pradesh";
  var state={'Andhra Pradesh':'AP','Telangana':'Tel'};

  List _states=[];
  StateDependentDropDown(){
    state.forEach((key, value) {
      _states.add(key);
    });
  }

  String _selecteddistrict="";
  var district={'Srikakulam':'AP','Vizianagaram':'AP','Parvathipuram Manyam':'AP', 'Vishakapatnam':'AP',
    'Anakapalli':'AP','Alluri Sitharama Raju':'AP','Kakinada':'AP' ,'E.Godavari':'AP' , 'Konaseema':'AP' ,
    'W.Godavari':'AP' , 'Eluru':'AP' ,'NTR':'AP' , 'Krishna':'AP' , 'Guntur':'AP' , 'Palnadu':'AP' ,
    'Bapatla':'AP' ,'Prakasham':'AP' ,'Nellore':'AP' , 'Tirupati':'AP' , 'Chittoor':'AP' , 'Annamayya':'AP' ,
    'Kadapa':'AP' , 'Nandyala':'AP' , 'Kurnool':'AP' , 'Anantapur':'AP' , 'Sri Sathya Sai':'AP',
    'Adilabad':'TS' , 'Bhadradri Kothagudem':'TS' , 'Hyderabad':'TS' , 'Jagityal':'TS' , 'Jangaon(Janagam)':'TS' ,
    'Jayashankar Bhupalapalle':'TS', 'Jogulamba Gadwal':'TS' , 'Kamareddy':'TS' , 'Karimnagar':'TS' , 'Khammam':'TS' ,
    'Komaram Bheem Asifabad':'TS' , 'Mahabubabad':'TS' , 'Mahabubnagar':'TS' ,'Mancherial':'TS' , 'Medak':'TS' ,
    'Medchal Malkajgiri':'TS' , 'Mulugu':'TS' , 'Nagarkurnool':'TS' , 'Nalgonda':'TS' , 'Narayanpet':'TS' ,
    'Nirmal':'TS' , 'Nizamabad':'TS' ,'Peddapalli':'TS' , 'Rajanna Sirisilla':'TS' , 'Rangareddy':'TS' ,
    'Sangareddy':'TS' , 'Siddipet':'TS' , 'Suryapet':'TS' , 'Vikarabad':'TS' , 'Wanaparthy':'TS' ,
    'Warangal Rural':'TS' , 'Warangal Urban':'TS' , 'Yadadri Bhongiri':'TS' };

  List _districts=[];
  DistrictDependentDropDown(stateShortName){
    district.forEach((key, value) {
      if(stateShortName==value){
        _districts.add(key);
      }
    });
    _selecteddistrict= _districts[0];
  }

  String _selectedconstituent="";
  var constituent={'Ichchapuram':'Srikakulam','Palasa':'Srikakulam' , 'Tekkali':'Srikakulam' , 'Pathapatnam':'Srikakulam' , 'Srikakulam':'Srikakulam' , 'Amadalavalasa':'Srikakulam' , 'Etcherla':'Srikakulam' , 'Narasannapeta':'Srikakulam',
    'Rajam':'Vizianagaram' , 'Bobbili':'Vizianagaram' , 'CheepuruPalli':'Vizianagaram' , 'Gajapathinagaram':'Vizianagaram' , 'Nellimarla':'Vizianagaram' , 'Vizianagaram':'Vizianagaram' , 'Srungavarapukota':'Vizianagaram',
    'Palakonda':'Parvathipuram Manyam' , 'Kurupam':'Parvathipuram Manyam' , 'Parvathipuram':'Parvathipuram Manyam' , 'Salur':'Parvathipuram Manyam',
    'Bhimili':'Vishakapatnam' , 'Vizag East':'Vishakapatnam' , 'Vizag South':'Vishakapatnam' , 'Vizag North':'Vishakapatnam' , 'Vizag West':'Vishakapatnam' , 'GajuWaka':'Vishakapatnam',
    'Chodavaram':'Anakapalli' , 'Madugula':'Anakapalli' , 'Anakapalle':'Anakapalli' , 'Pendurthi':'Anakapalli' , 'Elamanchili':'Anakapalli' , 'Payakaraopet':'Anakapalli' , 'Narsipatnam':'Anakapalli',
    'Araku Valley':'Alluri Sitharama Raju','Paderu':'Alluri Sitharama Raju','Rampachodavaram':'Alluri Sitharama Raju',
    'Tuni':'Kakinada' , 'Prathipadu':'Kakinada' , 'Pithapuram':'Kakinada' , 'Kakinada Rural':'Kakinada' , 'Peddapuram':'Kakinada' , 'Kakinada City':'Kakinada' , 'Jaggampeta':'Kakinada',
    'Anaparthy':'E.Godavari' , 'Rajanagaram':'E.Godavari' , 'Rajahmundry City':'E.Godavari' , 'Rajahmundry Rural':'E.Godavari' , 'Kovvur':'E.Godavari' , 'Nidadavole':'E.Godavari' , 'Gopalapuram':'E.Godavari',
    'Ramachandrapuram':'Konaseema' , 'Mummidivaram':'Konaseema' , 'Amalapuram':'Konaseema' , 'Razole':'Konaseema' , 'Gannavaram':'Konaseema' , 'Kothapeta':'Konaseema' , 'Mandapeta':'Konaseema',
    'Achanta':'W.Godavari' , 'Palakollu':'W.Godavari' , 'Narasapuram':'W.Godavari' , 'Bhimavaram':'W.Godavari' , 'Undi':'W.Godavari' , 'Tanuku':'W.Godavari' , 'Tadepalligudem':'W.Godavari',
    'Unguturu':'Eluru' , 'Denduluru':'Eluru' , 'Eluru':'Eluru' , 'Polavaram':'Eluru' , 'Chintalapudi':'Eluru' , 'Nuzvid':'Eluru' , 'Kaikaluru':'Eluru',
    'Tiruvuru':'NTR' , 'Vijayawada West':'NTR' , 'Vijayawada Central':'NTR' , 'Vijayawada East':'NTR' , 'Mylavaram':'NTR' , 'Nandigama':'NTR' , 'Jaggayyapeta':'NTR',
    'Gannavaram':'Krishna' , 'Gudivada':'Krishna' , 'Pedana':'Krishna' , 'Machilipatnam':'Krishna' , 'Avanigadda':'Krishna' , 'Pamarru':'Krishna' , 'Penamaluru':'Krishna',
    'Tadikonda':'Guntur' , 'Mangalagiri':'Guntur' , 'Ponnur':'Guntur' , 'Tenali':'Guntur' , 'Prathipadu':'Guntur' , 'Guntur West':'Guntur' , 'Guntur East':'Guntur',
    'Pedakurapadu':'Palnadu' , 'Chilakaluripeta':'Palnadu' , 'NarasaraoPeta':'Palnadu' , 'Sattenapalle':'Palnadu' , 'Vinukonda':'Palnadu' , 'Gurazala':'Palnadu' , 'Macherla':'Palnadu',
    'Vemuru':'Bapatla' , 'Repalle':'Bapatla' , 'Bapatla':'Bapatla' , 'Parchur':'Bapatla' , 'Addanki':'Bapatla' , 'Chirala':'Bapatla',
    'Santhanuthalapadu':'Prakasham' , 'Yerragondapalem':'Prakasham' , 'Darsi':'Prakasham' , 'Ongole':'Prakasham' , 'Kondapi':'Prakasham' , 'Markapuram':'Prakasham' , 'Giddalur':'Prakasham' , 'Kanigiri':'Prakasham',
    'Sarvepalli':'Nellore' , 'Kandukur':'Nellore' , 'Kavali':'Nellore' , 'Atmakur':'Nellore' , 'Kovuru':'Nellore' , 'Nellore City':'Nellore' , 'Nellore Rural':'Nellore' , 'Udayagiri':'Nellore',
    'Tirupati':'Tirupati' ,  'Sullurupeta':'Tirupati' , 'Venkatagiri':'Tirupati' , 'Gudur':'Tirupati' , 'Srikalahasti':'Tirupati' , 'Satyavedu':'Tirupati' , 'Chandragiri':'Tirupati',
    'Punganur':'Chittoor' , 'Nagari':'Chittoor' , 'Gangadhara Nellore':'Chittoor' , 'Chittoor':'Chittoor' , 'Puthalapattu':'Chittoor' , 'Palamaner':'Chittoor' , 'Kuppam':'Chittoor',
    'Rajampet':'Annamayya' , 'Kodur':'Annamayya' , 'Rayachoti':'Annamayya' , 'Thamballapalle':'Annamayya' , 'Pileru':'Annamayya' , 'Madanapalle':'Annamayya',
    'Badvel':'Kadapa' , 'Jammalamadugu':'Kadapa' , 'Kadapa':'Kadapa' , 'Kamalapuram':'Kadapa' , 'Mydukur':'Kadapa' , 'Proddatur':'Kadapa' , 'Pulivendula':'Kadapa' , 'Rajampet':'Kadapa',
    'Allagadda':'Nandyala' , 'Srisailam':'Nandyala' , 'Nandikotkur':'Nandyala' , 'Nandyala':'Nandyala' , 'Banaganapalle':'Nandyala' , 'Dhone':'Nandyala' , 'Panyam':'Nandyala',
    'Kurnool':'Kurnool' , 'Kodumur':'Kurnool' , 'Yemmigamur':'Kurnool' , 'Mantralayam':'Kurnool' , 'Adoni':'Kurnool' , 'Alur':'Kurnool' , 'Pattikonda':'Kurnool',
    'Raptadu':'Anantapur' , 'Rayadurg':'Anantapur' , 'Urvakonda':'Anantapur' , 'Guntakal':'Anantapur' , 'Tadipatri':'Anantapur' , 'Singanamala':'Anantapur' , 'Anantapur Urban':'Anantapur' , 'Kalyandurg':'Anantapur',
    'Madakasira':'Sri Sathya Sai' , 'Hindupur':'Sri Sathya Sai' , 'Penukonda':'Sri Sathya Sai' , 'Puttaparthi':'Sri Sathya Sai' , 'Dharmavaram':'Sri Sathya Sai' , 'Kadiri':'Sri Sathya Sai'







  };

  List _constituents=[];
  ConstituentDependentDropDown(districtShortName){
    constituent.forEach((key, value) {
      if(districtShortName==value){
        _constituents.add(key);
      }
    });
    _selectedconstituent= _constituents[0];
  }
  void initState(){
    super.initState();
    StateDependentDropDown();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MLA"),backgroundColor: Colors.orange,centerTitle: true),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
          SizedBox(height: 23),
          Align(
            alignment: Alignment.centerLeft,
            child:Text("State",  style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18),),
          ),
        Container(
        width: 400,
        child: DropdownButton(
            value: _selectedState,
            onChanged: (newValue){
            setState(() {
            _constituents=[];
            _districts=[];
            DistrictDependentDropDown(state[newValue]);
            _selectedState="$newValue";
            });

    },
          items:_states.map((state){
            return DropdownMenuItem(
              child: new Text(state),
              value:state,
            );
          }).toList(),
        ),
        ),
        SizedBox(height: 23,),

        Align(
            alignment: Alignment.centerLeft,
            child:Text("District", style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18),)
        ),
        Container(
        width: 400,
        child: DropdownButton(
    value: _selecteddistrict,
    onChanged: (newValue){
    print(newValue);
    setState(() {
    print(newValue);
    _constituents=[];
    ConstituentDependentDropDown(newValue);

    _selecteddistrict="$newValue";
    });

    },
          items:_districts.map((district){
            return DropdownMenuItem(
              child: new Text(district),
              value: district,
            );
          }).toList(),
        ),
        ),
        SizedBox(height: 23,),

        Align(
            alignment: Alignment.centerLeft,
            child:Text("Constituent", style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18),)
        ),
            Container(
              width: 400,
              child: DropdownButton(
                value: _selectedconstituent,
                onChanged: (newValue){
                  setState(() {
                    _selectedconstituent="$newValue";
                  });

                },
                items:_constituents.map((constituent){
                  return DropdownMenuItem(
                    child: new Text(constituent),
                    value:constituent,
                  );
                }).toList(),
              ),
            )


          ],
        ),
      ),
    );
  }
}
