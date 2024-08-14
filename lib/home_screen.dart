import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handling_apis_flutter/cubit/my_cubit.dart';
import 'package:handling_apis_flutter/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> usersList = [];
  User user = User();

  @override
  void initState() {
    super.initState();
    // BlocProvider.of<MyCubit>(context).emitGetAllUsers(usersList);
    BlocProvider.of<MyCubit>(context).emitGetUserDetails(7281366);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Column(
        children: [
          // BlocBuilder<MyCubit, MyState>(
          //   builder: (context, state) {
          //     if (state is GetAllUsers) {
          //       usersList = (state).allUsersList;
          //       return ListView.builder(
          //         shrinkWrap: true,
          //         physics: const NeverScrollableScrollPhysics(),
          //         padding: const EdgeInsets.all(8.0),
          //         itemCount: usersList.length,
          //         itemBuilder: (context, index) {
          //           return Container(
          //             height: 50,
          //             color: Colors.amberAccent,
          //             child: Center(
          //               child: Text(usersList[index].email.toString()),
          //             ),
          //           );
          //         },
          //       );
          //     } else {
          //       return const Center(
          //         child: CircularProgressIndicator(),
          //       );
          //     }
          //   },
          // ),

          BlocBuilder<MyCubit, MyState>(
            builder: (context, state) {
              if (state is GetUserDetails) {
                user = (state).userDetails;
               return Container(
                      height: 50,
                      color: Colors.amberAccent,
                      child: Center(
                        child: Text(user.name.toString()),
                      ),
                    );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
