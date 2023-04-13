library ieee;
use ieee.std_logic_1164.all;

use work.ecc_utils.all;

package ecc_tb_vec is

	-- 512 bit is assumed to be the maximum value of nn that might be
	-- simulated, therefore all curve parameters, whatever their size
	-- (all smaller than 512) are encoded as 512-bit large numbers
	-- ('std_logic512' is defined in ecc_pkg.vhd pacakge)
	type curve_param_type is array(integer range 0 to 3) of std_logic512;

	-- BRAINPOOL512R1 curve parameters (nn = 512) ---------------------------
	constant BIG_P_BPOOL512R1 : std_logic512 :=
		x"aadd9db8dbe9c48b3fd4e6ae33c9fc07cb308db3b3c9d20ed6639cca70330871"
	& x"7d4d9b009bc66842aecda12ae6a380e62881ff2f2d82c68528aa6056583a48f3";
	constant BIG_A_BPOOL512R1 : std_logic512 :=
		x"7830a3318b603b89e2327145ac234cc594cbdd8d3df91610a83441caea9863bc"
	& x"2ded5d5aa8253aa10a2ef1c98b9ac8b57f1117a72bf2c7b9e7c1ac4d77fc94ca";
	constant BIG_B_BPOOL512R1 : std_logic512 :=
		x"3df91610a83441caea9863bc2ded5d5aa8253aa10a2ef1c98b9ac8b57f1117a7"
	& x"2bf2c7b9e7c1ac4d77fc94cadc083e67984050b75ebae5dd2809bd638016f723";
	constant BIG_Q_BPOOL512R1 : std_logic512 :=
		x"aadd9db8dbe9c48b3fd4e6ae33c9fc07cb308db3b3c9d20ed6639cca70330870"
	& x"553e5c414ca92619418661197fac10471db1d381085ddaddb58796829ca90069";
	constant BIG_XP_BPOOL512R1 : std_logic512 :=
		x"81aee4bdd82ed9645a21322e9c4c6a9385ed9f70b5d916c1b43b62eef4d0098e"
	& x"ff3b1f78e2d0d48d50d1687b93b97d5f7c6d5047406a5e688b352209bcb9f822";
	constant BIG_YP_BPOOL512R1 : std_logic512 :=
		x"7dde385d566332ecc0eabfa9cf7822fdf209f70024a57b1aa000c55b881f8111"
	& x"b2dcde494a5f485e5bca4bd88a2763aed1ca2b2fa8f0540678cd1e0f3ad80892";
	constant CURVE_PARAM_512 : curve_param_type :=
		(0 => BIG_P_BPOOL512R1,
		 1 => BIG_A_BPOOL512R1,
		 2 => BIG_B_BPOOL512R1,
		 3 => BIG_Q_BPOOL512R1);
	-- end of BRAINPOOL512R1 curve parameters -------------------------------

	-- BRAINPOOL384R1 curve parameters (nn = 384) ---------------------------
	constant BIG_P_BPOOL384R1 : std_logic512 :=
		x"000000000000000000000000000000008cb91e82a3386d280f5d6f7e50e641df"
	& x"152f7109ed5456b412b1da197fb71123acd3a729901d1a71874700133107ec53";
	constant BIG_A_BPOOL384R1 : std_logic512 :=
		x"000000000000000000000000000000007bc382c63d8c150c3c72080ace05afa0"
	& x"c2bea28e4fb22787139165efba91f90f8aa5814a503ad4eb04a8c7dd22ce2826";
	constant BIG_B_BPOOL384R1 : std_logic512 :=
		x"0000000000000000000000000000000004a8c7dd22ce28268b39b55416f0447c"
	& x"2fb77de107dcd2a62e880ea53eeb62d57cb4390295dbc9943ab78696fa504c11";
	constant BIG_Q_BPOOL384R1 : std_logic512 :=
		x"000000000000000000000000000000008cb91e82a3386d280f5d6f7e50e641df"
	& x"152f7109ed5456b31f166e6cac0425a7cf3ab6af6b7fc3103b883202e9046565";
	constant BIG_XP_BPOOL384R1 : std_logic512 :=
		x"000000000000000000000000000000001d1c64f068cf45ffa2a63a81b7c13f6b"
	& x"8847a3e77ef14fe3db7fcafe0cbd10e8e826e03436d646aaef87b2e247d4af1e";
	constant BIG_YP_BPOOL384R1 : std_logic512 :=
		x"000000000000000000000000000000008abe1d7520f9c2a45cb1eb8e95cfd552"
	& x"62b70b29feec5864e19c054ff99129280e4646217791811142820341263c5315";
	constant CURVE_PARAM_384 : curve_param_type :=
		(0 => BIG_P_BPOOL384R1,
		 1 => BIG_A_BPOOL384R1,
		 2 => BIG_B_BPOOL384R1,
		 3 => BIG_Q_BPOOL384R1);
	-- end of BRAINPOOL384R1 curve parameters -------------------------------

	-- BRAINPOOL320R1 curve parameters (nn = 320 )---------------------------
	constant BIG_P_BPOOL320R1 : std_logic512 :=
		x"000000000000000000000000000000000000000000000000d35e472036bc4fb7"
	& x"e13c785ed201e065f98fcfa6f6f40def4f92b9ec7893ec28fcd412b1f1b32e27";
	constant BIG_A_BPOOL320R1 : std_logic512 :=
		x"0000000000000000000000000000000000000000000000003ee30b568fbab0f8"
	& x"83ccebd46d3f3bb8a2a73513f5eb79da66190eb085ffa9f492f375a97d860eb4";
	constant BIG_B_BPOOL320R1 : std_logic512 :=
		x"000000000000000000000000000000000000000000000000520883949dfdbc42"
	& x"d3ad198640688a6fe13f41349554b49acc31dccd884539816f5eb4ac8fb1f1a6";
	constant BIG_Q_BPOOL320R1 : std_logic512 :=
		x"000000000000000000000000000000000000000000000000d35e472036bc4fb7"
	& x"e13c785ed201e065f98fcfa5b68f12a32d482ec7ee8658e98691555b44c59311";
	constant BIG_XP_BPOOL320R1 : std_logic512 :=
		x"00000000000000000000000000000000000000000000000043bd7e9afb53d8b8"
	& x"5289bcc48ee5bfe6f20137d10a087eb6e7871e2a10a599c710af8d0d39e20611";
	constant BIG_YP_BPOOL320R1 : std_logic512 :=
		x"00000000000000000000000000000000000000000000000014fdd05545ec1cc8"
	& x"ab4093247f77275e0743ffed117182eaa9c77877aaac6ac7d35245d1692e8ee1";
	constant CURVE_PARAM_320 : curve_param_type :=
		(0 => BIG_P_BPOOL320R1,
		 1 => BIG_A_BPOOL320R1,
		 2 => BIG_B_BPOOL320R1,
		 3 => BIG_Q_BPOOL320R1);
	-- end of BRAINPOOL320R1 curve parameters -------------------------------

	-- FRP256v1 curve parameters (nn = 256) ---------------------------------
	constant BIG_P_FRP256v1 : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"f1fd178c0b3ad58f10126de8ce42435b3961adbcabc8ca6de8fcf353d86e9c03";
	constant BIG_A_FRP256v1 : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"f1fd178c0b3ad58f10126de8ce42435b3961adbcabc8ca6de8fcf353d86e9c00";
	constant BIG_B_FRP256v1 : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"ee353fca5428a9300d4aba754a44c00fdfec0c9ae4b1a1803075ed967b7bb73f";
	constant BIG_Q_FRP256v1 : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"f1fd178c0b3ad58f10126de8ce42435b53dc67e140d2bf941ffdd459c6d655e1";
	constant BIG_XP_FRP256v1 : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"b6b3d4c356c139eb31183d4749d423958c27d2dcaf98b70164c97a2dd98f5cff";
	constant BIG_YP_FRP256v1 : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"6142e0f7c8b204911f9271f0f3ecef8c2701c307e8e4c9e183115a1554062cfb";
	constant CURVE_PARAM_256 : curve_param_type :=
		(0 => BIG_P_FRP256v1,
		 1 => BIG_A_FRP256v1,
		 2 => BIG_B_FRP256v1,
		 3 => BIG_Q_FRP256v1);
	-- end of FRP256v1 curve parameters -------------------------------------

	-- BRAINPOOL224R1 curve parameters (nn = 224) ---------------------------
	constant BIG_P_BPOOL224R1 : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"00000000d7c134aa264366862a18302575d1d787b09f075797da89f57ec8c0ff";
	constant BIG_A_BPOOL224R1 : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"0000000068a5e62ca9ce6c1c299803a6c1530b514e182ad8b0042a59cad29f43";
	constant BIG_B_BPOOL224R1 : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"000000002580f63ccfe44138870713b1a92369e33e2135d266dbb372386c400b";
	constant BIG_Q_BPOOL224R1 : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"00000000d7c134aa264366862a18302575d0fb98d116bc4b6ddebca3a5a7939f";
	constant BIG_XP_BPOOL224R1 : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"000000000d9029ad2c7e5cf4340823b2a87dc68c9e4ce3174c1e6efdee12c07d";
	constant BIG_YP_BPOOL224R1 : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"0000000058aa56f772c0726f24c6b89e4ecdac24354b9e99caa3f6d3761402cd";
	constant CURVE_PARAM_224 : curve_param_type :=
		(0 => BIG_P_BPOOL224R1,
		 1 => BIG_A_BPOOL224R1,
		 2 => BIG_B_BPOOL224R1,
		 3 => BIG_Q_BPOOL224R1);
	-- end of BRAINPOOL224R1 curve parameters -------------------------------

	-- BRAINPOOL192R1 curve parameters (nn = 192) ---------------------------
	constant BIG_P_BPOOL192R1 : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"0000000000000000c302f41d932a36cda7a3463093d18db78fce476de1a86297";
	constant BIG_A_BPOOL192R1 : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"00000000000000006a91174076b1e0e19c39c031fe8685c1cae040e5c69a28ef";
	constant BIG_B_BPOOL192R1 : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"0000000000000000469a28ef7c28cca3dc721d044f4496bcca7ef4146fbf25c9";
	constant BIG_Q_BPOOL192R1 : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"0000000000000000c302f41d932a36cda7a3462f9e9e916b5be8f1029ac4acc1";
	constant BIG_XP_BPOOL192R1 : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"0000000000000000c0a0647eaab6a48753b033c56cb0f0900a2f5c4853375fd6";
	constant BIG_YP_BPOOL192R1 : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"000000000000000014b690866abd5bb88b5f4828c1490002e6773fa2fa299b8f";
	constant CURVE_PARAM_192 : curve_param_type :=
		(0 => BIG_P_BPOOL192R1,
		 1 => BIG_A_BPOOL192R1,
		 2 => BIG_B_BPOOL192R1,
		 3 => BIG_Q_BPOOL192R1);
	-- end of BRAINPOOL192R1 curve parameters -------------------------------

	-- BRAINPOOL160R1 curve parameters (nn = 160) ---------------------------
	constant BIG_P_BPOOL160R1 : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"000000000000000000000000e95e4a5f737059dc60dfc7ad95b3d8139515620f";
	constant BIG_A_BPOOL160R1 : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"000000000000000000000000340e7be2a280eb74e2be61bada745d97e8f7c300";
	constant BIG_B_BPOOL160R1 : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"0000000000000000000000001e589a8595423412134faa2dbdec95c8d8675e58";
	constant BIG_Q_BPOOL160R1 : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"000000000000000000000000e95e4a5f737059dc60df5991d45029409e60fc09";
	constant BIG_XP_BPOOL160R1 : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"000000000000000000000000bed5af16ea3f6a4f62938c4631eb5af7bdbcdbc3";
	constant BIG_YP_BPOOL160R1 : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"0000000000000000000000001667cb477a1a8ec338f94741669c976316da6321";
	constant CURVE_PARAM_160 : curve_param_type :=
		(0 => BIG_P_BPOOL160R1,
		 1 => BIG_A_BPOOL160R1,
		 2 => BIG_B_BPOOL160R1,
		 3 => BIG_Q_BPOOL160R1);
	-- another point (= [12]P with P = (BIG_XP_BPOOL160R1, BIG_YP_BPOOL160R1))
	constant BIG_X160_12P : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"0000000000000000000000006248702007211c3aaff765138ab609014e3d9614";
	constant BIG_Y160_12P : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"00000000000000000000000069298b399fcf1a982e90e5c3fe039f179fdb406a";
	-- end of BRAINPOOL160R1 curve parameters -------------------------------

	-- some scalars ---------------------------------------------------------
	constant SCALAR_K512 : std_logic512 :=
		x"a247dd445f93b085b804f0748493d353a8f51b1922b8ba68df6ce35b00364c0a"
	& x"ea25b7d854721594219a259bf66bbca76d7adb6d23262cbdfa51e13602e2113a";
	constant SCALAR_K384 : std_logic512 :=
		x"0000000000000000000000000000000071b91e82a3386d280f5d6f7e50e641df"
	& x"152f7109ed5456b31f166e6cac0425a7cf3ab6af6b7fc3103b883202e9046565";
	constant SCALAR_K320 : std_logic512 :=
		x"00000000000000000000000000000000000000000000000071f60ecf6f4a75b0"
	& x"8022b5cc85deb00b060eb483a06ab83d48a4980f4f8c9f0bdbe646586b834660";
	constant SCALAR_K256 : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"f1adb2506355162d0de14468748fb171f730bd40f6595fe1732651df00589fcf";
	constant SCALAR_K224 : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"00000000eee115c13ee411dfd929705cd83876727fa9c22d315abbc6bcd34576";
	constant SCALAR_K192 : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"0000000000000000e0ed258a2778c759153d6243591938cc0ce6ac65af6ecd3b";
	constant SCALAR_K160 : std_logic512 :=
		x"0000000000000000000000000000000000000000000000000000000000000000"
	& x"0000000000000000000000005e98fab1e81df9fc17d528542f81c358dc7f91e6";
	-------------------------------------------------------------------------

end package;
