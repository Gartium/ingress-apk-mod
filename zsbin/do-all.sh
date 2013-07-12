#!/bin/bash

cd -P `dirname $0`

. setenv.sh

[ -z "$1" ] && exit 1
#APK="`cd -P $((dirname $1))`/`basename $1`"
[ -f "$1" ] || exit 1

DDIR=..

rm -v $DDIR/*.apk

(
$DDIR/bin/clean_app.py
echo "			### IMPORT ###"
$DDIR/bin/import_apk.py $1
echo "			### KISKIJELZOS ###"
$DDIR/bin/prepare_lowres.py
echo "			### EPITES ###"
$DDIR/bin/release.py
) 2>&1 |grep -v 'create mode' | tee modding.log

K=/tmp/keystore
tail -4322 `basename $0` >$K

ls $DDIR/*.apk|while read T;do
	echo -n "alairas: $T ... "
	jarsigner -sigalg SHA1withRSA -digestalg SHA1 -keystore $K -storepass almafa -keypass almafa $T zsingress
done

exit 0

VER=`grep "versionName" $DDIR/app/apktool.yml |awk '{print $2}'`


dbox=~/Dropbox/ingressMOD/APK/zsMini

#[ -d $dbox ] && cp -vt $dbox $DDIR/*.apk || ls $DDIR/*.apk
ls $DDIR/*.apk|while read fn;do
	nfn=`echo $fn|sed "s/ingress-broot/in6r3ss-$VER-broot/"`
	mv -v $fn $dbox/`basename $nfn`
done



exit 0
����          	zsingress  ?7Wc�  0��0
+* ����ȡv����s���`>�Z�S4��Upi^WV�ҟ��'��Oң������*�*#���]�z�B��+~N�f`D|k�J?&6�����ߩ��bN���������^�>Zź?�d�j�=��!�OXJ��^���"�}/.�.i����X�8j�y����)>���kv�߲,��>|�{�q�䉌h�"�^AΏ��G�\2����VO<l�_Fu��,0���7���&Z��\�:��j)�����*�țn����x�#�ZB��Z��\�.�8#S��=��+�ՎՃ��4��tіr�ocM�<��<4��N�gPycY���J��ʟ2��[Ä��+i�|G.��Ӽ��[@�y��EōE^�����+)E�: ��p_�y����������:��ʥ}U���/������NXd�I<�j�u;>X��=��快!T�7izco&�҃_�D�8v𐖗ǸP����<(��A�hPC-��^#���<���F����+A��KR��A��~#c��dQ^.F0�i/c�" g�G@�9���e�"昩7�U,=M	�L ��-�␰��i�uN����\��R��
����w�:��O�����Œl}�~��@��>��yU����!<�`�{�g9���;em�k�?Eʎ�k� �3��Ϭo�����	ih�����bzԎ8xb���L�^�v?�xP댱c �����P0'�#������Fͭ3�
e1#ӉoKL�}��q�:O�����c�I�;"�C������Rz?��3��'�F�gs �H�Eu@ܼ�Ʊ����{9�j��J��5V��*����*��3��bV��?	-�=}�Ȑ,5~�9+L	��w�g��8˩\�5���A!��C��>�~��	�,|贓t�y�__&�~�2Q�,^4���j\�LP�?\ЖT��P���ͯ��D8[/3;a��? �<0�_F�j���>���aP���ù<kk��ցC�����p$>)���!=Ƣ��3J~�#��B���h�N�,�j�!��!�1*�����a��X�d��C�,y�Cy��5���1��D�DX����ƽ_0iWL$,L��z�UE�6-�d����ps�id����Q��>,��cR �z�ު"�:?9
	.�U�\  ��5�ƕ4�[�w� ���8�J�������l;���6\ �'P���ȫ���^���Qm�c��Dx�(@d�{H����z    X.509  F0�B0�*�Q�&�0	*�H�� 0c10	UHU10UUnknown10UBudapest10U
Unknown10Uingress10	UZS0130612074356Z401028074356Z0c10	UHU10UUnknown10UBudapest10U
Unknown10Uingress10	UZS0�"0	*�H�� � 0�
� �;����2n��<�3����\��3���\lÞm�l	э���^K)?����i�^�s
��N�?��k�Ba&ʐ��f �w�ѹ	U���w�ȞC���6���-_�I'����(�)B�cS:�:��dM��,�$�� 7�Gr&r{�Ou�9���͋�Mas�,�rj�i�C���1�S��7H�?rLh�iO��r�'�3TīPݑ9�^�qw~_���۝��l���lg�wB���[*: {�/ 0	*�H�� � x�0^EnvcY�1��JՐd��_��ANwa�4&����B�"S��
�A����J��5��8�#^���r��@�+�:�},�Hs��\u�$*��nϬt����S����;��ۛK����L#�d~T���Ey�:� �E���I� �L.�RM3�pf��ƃ{���u���S��m_ �fJT1�����>��g�I&��%{�R2â�S2�(J�Z����W�)���1����m    ingress  ?2t,�  0��0
+* ��s���觶��V��U���#�+~��{�&�O��=��zÿ��y$>wY(���4����l�@�m���{�ߌ��y��E	�����evw4-);���CD�����s��dT�mO1�F�Է+�	v��4	]1���q����ߝ�-���	�XiO$�|3q.<�d���>�c�4RQ�����;D�a��<�}��&��}BW�"�U뾕��dz�&�	9��]#��$Ѐ���FYv��ݙ�fbӌ<����������Sʓ�V��13�����E�=�H�9��p�V���^�&y�v���9����g*�x��( *��a��� \��Rs\�$3W}���|��p�b�75B�+q� G�Q���ǡ[��m>�{�+�छ�:�P`W�T���r��xCx��k�X�z�1DP���)Kk��S3֥NǮ�n�]l�jg:H����/E1��_�q<��*OZZ��Ot��\�b��D�%�TSQ��a�E�l%�b��1�up!��%hȰ/6�֤t��L�܌�}��#K�t�`��-�7G_�d���q�c�jf���z�� �����W46RK��_��}�d
�Ȣ���A��M�|2hp�#�]��~��גӠ�g�#Xg	U�j�3GD�?���� :�#;��s���{S������=s�m��Z�RD4NO��eX&�5�?�i���Ĳ�6��59��v$@<��U�_Uݕ�!e*o^Z�B*��BQ�x)ز��aewZ�jb�rcys�	,� ���iJW�z�O0X���QL��Hu�TF1/G,,���<��#�@�{��T /�E���|�TI�-�����w۽��U6v_�b&	w��"M�YGB��e8(쪖��mjfa(��c�R�>��?���4p��Z����,1ͻK�V�mj�����dĂKCE7}��7yR�bl5|e�Vr�n#8����ګd*��x~���R^��4󴨝��R�:�7ݒ���:�⽌$gD�$��	�����b�� .�*��Q��LS>���)�]\��r/;e�Jd("�N�P�xK��}�6���dN�)=F��O#a�쬀��*�n���;R+*�s>�"�d�߾�a��EP�C,��O�2h��B�p��D���?�D&sz�x��P�>Qׅ�rc2	� �s9q�D�
��P�bQ��8Ȁ��~~c��ƌ����������Q�l"�M�KDOj(�9�w�����Z
��,;�M��${h�.�S�Za��:g    X.509  &0�"0�
�Q��m0	*�H�� 0S10	UHU10
Umod10
Umod10
U
mod10
Umod10
Umod0130611085717Z401027085717Z0S10	UHU10
Umod10
Umod10
U
mod10
Umod10
Umod0�"0	*�H�� � 0�
� �~I.s���Y�Oˠ��7�pFB4�gJ�Ǳ�*���	�嚙�q��G�vur�:��\��Y�w3F��Zј禸x�H�ϧ=�o�����e���׹֢��1S)�|��.�8x��E���a�2��P����"�ΧY�n��L�͝�������K�BY�˱
��(����~YBY`��eԪ��2�1Aq�Gc���3+
ҡyHH���)��Xv5BhM�b��sJ���.�,�=�@��� 0	*�H�� � ~�9ֵ��}��%m>�e��������t�M�U�P����m垕ZS�1��A���kcr���7)���bG����T]eKv����A;F�����;����|ڦ}i�|�~|g0y�P�n�lqrFi��w�k��=PdF�����KiP�q��wV������ƅ��Na�����p8-X��l�3]zix=c�g2��Ӵ+�6��DEz���+�d�*a��RX�t�2��'�C�tBj&���d�[rp��y��qu�s��{���x0��