import 'package:flight_ticket/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Text(
          'Saldo Saya',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget bonusCard() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Center(
              child: Container(
                width: 300,
                height: 211,
                padding: EdgeInsets.all(
                  defaultMargin,
                ),
                margin: EdgeInsets.only(top: 150),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/image_card.png',
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: kPrimaryColor.withOpacity(0.5),
                      blurRadius: 50,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nama',
                                style: whiteTextStyle.copyWith(
                                  // fontSize: 14, // default Flutter
                                  fontWeight: light,
                                ),
                              ),
                              Text(
                                '${state.user.name}',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 20,
                                  fontWeight: medium,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 24,
                          height: 24,
                          margin: EdgeInsets.only(right: 6),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/icon_plane.png',
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Bayar',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 41,
                    ),
                    Text(
                      'Saldo',
                      style: whiteTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                    Text(
                      'IDR 280.000.000',
                      style: whiteTextStyle.copyWith(
                        fontSize: 26,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return SizedBox();
          }
        },
      );
    }

    return ListView(
      children: [
        title(),
        bonusCard(),
      ],
    );
  }
}
