GDPC                                                                               @   res://.import/new_fish.png-4edf9e2eb66bf72344ff3b64e8a47cee.stex�K      j      ��a�O�zzʪ�{�   res://Fish/Fish.tscn�      �      ����tZ�α�2�Qo   res://Scenes/MainScreen.tscnP      �      �"3җM�J���^�F   res://Script/Fish.gd.remap   P      &       0;��ɧ#�-~"y�v   res://Script/Fish.gdc   #      ~      �s�����8�r-�X(   res://Script/GlobalVariables.gd.remap   0P      1       ¤�^i!=��������    res://Script/GlobalVariables.gdc�4      �       p}��΍��n'A-    res://Script/MainScreen.gd.remappP      ,       �%j�����l�]�$�   res://Script/MainScreen.gdc 05      �      ����4? > �
؎$   res://Shaders/fish_movement.shader  �H      /      ���ؿ��9��/sGݹ$   res://Sprites/new_fish.png.import   `M      �      ��Ϧ���лb�7�#   res://project.binary�P      �      �|��u{��,$c~6G    [gd_scene load_steps=6 format=2]

[ext_resource path="res://Shaders/fish_movement.shader" type="Shader" id=1]
[ext_resource path="res://Sprites/new_fish.png" type="Texture" id=2]
[ext_resource path="res://Script/Fish.gd" type="Script" id=3]

[sub_resource type="ShaderMaterial" id=1]
shader = ExtResource( 1 )
shader_param/time_offset = 0.0
shader_param/time_scale = 3.0
shader_param/side_to_side = 2.0
shader_param/pivot = 1.0
shader_param/wave = 5.0
shader_param/black_mask = 1.0
shader_param/white_mask = 0.0

[sub_resource type="ArrayMesh" id=2]
surfaces/0 = {
"aabb": AABB( -11, -21, 0, 22, 42, 0 ),
"array_data": PoolByteArray( 0, 0, 0, 65, 205, 204, 164, 193, 70, 23, 93, 63, 193, 9, 28, 60, 0, 0, 0, 65, 205, 204, 140, 193, 70, 23, 93, 63, 93, 202, 165, 61, 0, 0, 48, 65, 102, 102, 86, 193, 0, 0, 128, 63, 149, 75, 57, 62, 0, 0, 48, 65, 96, 102, 230, 63, 0, 0, 128, 63, 175, 248, 10, 63, 152, 153, 185, 64, 0, 0, 168, 65, 172, 125, 67, 63, 0, 0, 128, 63, 0, 0, 192, 192, 0, 0, 168, 65, 47, 186, 104, 62, 0, 0, 128, 63, 0, 0, 192, 192, 0, 0, 128, 65, 47, 186, 104, 62, 24, 134, 97, 63, 0, 0, 24, 193, 0, 0, 128, 63, 233, 162, 139, 61, 98, 24, 6, 63, 205, 204, 44, 193, 0, 0, 128, 63, 9, 242, 20, 60, 98, 24, 6, 63, 0, 0, 48, 193, 51, 51, 67, 193, 0, 0, 0, 0, 105, 141, 86, 62, 0, 0, 192, 192, 0, 0, 164, 193, 47, 186, 104, 62, 49, 12, 67, 60, 0, 0, 192, 64, 0, 0, 168, 193, 116, 209, 69, 63, 0, 0, 0, 0 ),
"array_index_data": PoolByteArray( 11, 0, 0, 0, 1, 0, 1, 0, 2, 0, 3, 0, 3, 0, 4, 0, 5, 0, 7, 0, 8, 0, 9, 0, 9, 0, 10, 0, 11, 0, 11, 0, 1, 0, 3, 0, 3, 0, 5, 0, 6, 0, 6, 0, 7, 0, 9, 0, 9, 0, 11, 0, 3, 0, 3, 0, 6, 0, 9, 0 ),
"blend_shape_data": [  ],
"format": 262417,
"index_count": 30,
"primitive": 4,
"skeleton_aabb": [  ],
"vertex_count": 12
}

[node name="Fish" type="Node2D"]
script = ExtResource( 3 )

[node name="Body1" type="MeshInstance2D" parent="."]
material = SubResource( 1 )
rotation = 1.5708
mesh = SubResource( 2 )
texture = ExtResource( 2 )
               [gd_scene load_steps=2 format=2]

[ext_resource path="res://Script/MainScreen.gd" type="Script" id=4]

[node name="Simulation" type="Node2D"]
script = ExtResource( 4 )

[node name="Background" type="ColorRect" parent="."]
margin_right = 1280.0
margin_bottom = 720.0
color = Color( 0.231373, 0.584314, 0.666667, 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Options_Button" type="Button" parent="."]
margin_right = 100.0
margin_bottom = 20.0
text = "Options"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Reload" type="Button" parent="."]
margin_left = 1224.0
margin_right = 1279.0
margin_bottom = 20.0
text = "Reload"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Fish" type="Control" parent="."]
margin_right = 40.0
margin_bottom = 40.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Options_Background" type="ColorRect" parent="."]
visible = false
margin_top = 20.0
margin_right = 300.0
margin_bottom = 200.0
color = Color( 0, 0, 0, 0.47451 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Options" type="HBoxContainer" parent="."]
visible = false
margin_top = 20.0
margin_right = 300.0
margin_bottom = 196.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Names" type="VBoxContainer" parent="Options"]
margin_right = 148.0
margin_bottom = 176.0
size_flags_horizontal = 3
size_flags_vertical = 3

[node name="Num_Fish" type="RichTextLabel" parent="Options/Names"]
margin_right = 148.0
margin_bottom = 16.0
size_flags_horizontal = 3
size_flags_vertical = 3
bbcode_enabled = true

[node name="Num_Types" type="RichTextLabel" parent="Options/Names"]
margin_top = 20.0
margin_right = 148.0
margin_bottom = 36.0
size_flags_horizontal = 3
size_flags_vertical = 3
bbcode_enabled = true

[node name="Max_Speed" type="RichTextLabel" parent="Options/Names"]
margin_top = 40.0
margin_right = 148.0
margin_bottom = 56.0
size_flags_horizontal = 3
size_flags_vertical = 3
bbcode_enabled = true

[node name="View_Radius" type="RichTextLabel" parent="Options/Names"]
margin_top = 60.0
margin_right = 148.0
margin_bottom = 76.0
size_flags_horizontal = 3
size_flags_vertical = 3
bbcode_enabled = true

[node name="View_Angle" type="RichTextLabel" parent="Options/Names"]
margin_top = 80.0
margin_right = 148.0
margin_bottom = 96.0
size_flags_horizontal = 3
size_flags_vertical = 3
bbcode_enabled = true

[node name="Borders" type="RichTextLabel" parent="Options/Names"]
margin_top = 100.0
margin_right = 148.0
margin_bottom = 116.0
size_flags_horizontal = 3
size_flags_vertical = 3
bbcode_enabled = true

[node name="Alignment" type="RichTextLabel" parent="Options/Names"]
margin_top = 120.0
margin_right = 148.0
margin_bottom = 136.0
size_flags_horizontal = 3
size_flags_vertical = 3
bbcode_enabled = true

[node name="Avoidance" type="RichTextLabel" parent="Options/Names"]
margin_top = 140.0
margin_right = 148.0
margin_bottom = 156.0
size_flags_horizontal = 3
size_flags_vertical = 3
bbcode_enabled = true

[node name="Cohesion" type="RichTextLabel" parent="Options/Names"]
margin_top = 160.0
margin_right = 148.0
margin_bottom = 176.0
size_flags_horizontal = 3
size_flags_vertical = 3
bbcode_enabled = true

[node name="Sliders" type="VBoxContainer" parent="Options"]
margin_left = 152.0
margin_right = 300.0
margin_bottom = 176.0
size_flags_horizontal = 3
size_flags_vertical = 3

[node name="Num_Fish" type="HSlider" parent="Options/Sliders"]
margin_right = 148.0
margin_bottom = 16.0
min_value = 10.0
max_value = 200.0
value = 120.0

[node name="Num_Types" type="HSlider" parent="Options/Sliders"]
margin_top = 20.0
margin_right = 148.0
margin_bottom = 36.0
min_value = 1.0
max_value = 10.0
value = 3.0

[node name="Max_Speed" type="HSlider" parent="Options/Sliders"]
margin_top = 40.0
margin_right = 148.0
margin_bottom = 56.0
size_flags_horizontal = 3
size_flags_vertical = 3
min_value = 50.0
max_value = 1000.0
value = 50.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="View Radius" type="HSlider" parent="Options/Sliders"]
margin_top = 60.0
margin_right = 148.0
margin_bottom = 76.0
size_flags_horizontal = 3
size_flags_vertical = 3
max_value = 640.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="View Angle" type="HSlider" parent="Options/Sliders"]
margin_top = 80.0
margin_right = 148.0
margin_bottom = 96.0
max_value = 360.0

[node name="Borders" type="HSlider" parent="Options/Sliders"]
margin_top = 100.0
margin_right = 148.0
margin_bottom = 116.0
max_value = 10.0
step = 0.1

[node name="Alignment" type="HSlider" parent="Options/Sliders"]
margin_top = 120.0
margin_right = 148.0
margin_bottom = 136.0
max_value = 100.0

[node name="Avoidance" type="HSlider" parent="Options/Sliders"]
margin_top = 140.0
margin_right = 148.0
margin_bottom = 156.0
max_value = 100.0

[node name="Cohesion" type="HSlider" parent="Options/Sliders"]
margin_top = 160.0
margin_right = 148.0
margin_bottom = 176.0
max_value = 50.0
[connection signal="pressed" from="Options_Button" to="." method="_on_Button_pressed"]
[connection signal="pressed" from="Reload" to="." method="_on_Reload_pressed"]
[connection signal="value_changed" from="Options/Sliders/Num_Fish" to="." method="_on_Num_Fish_value_changed"]
[connection signal="value_changed" from="Options/Sliders/Num_Types" to="." method="_on_Num_Types_value_changed"]
[connection signal="value_changed" from="Options/Sliders/Max_Speed" to="." method="_on_Max_Speed_value_changed"]
[connection signal="value_changed" from="Options/Sliders/View Radius" to="." method="_on_View_Radius_value_changed"]
[connection signal="value_changed" from="Options/Sliders/View Angle" to="." method="_on_View_Angle_value_changed"]
[connection signal="value_changed" from="Options/Sliders/Borders" to="." method="_on_Borders_value_changed"]
[connection signal="value_changed" from="Options/Sliders/Alignment" to="." method="_on_Alignment_value_changed"]
[connection signal="value_changed" from="Options/Sliders/Avoidance" to="." method="_on_Avoidance_value_changed"]
[connection signal="value_changed" from="Options/Sliders/Cohesion" to="." method="_on_Cohesion_value_changed"]
         GDSC   3      �        ���ӄ�   ����������Ӷ   ����������������¶��   ���Ӷ���   �����ڶ�   �������϶���   ���Ӷ���   �����������Ҷ���   ��������Ҷ��   ����������Ŷ   ���������Ӷ�   �������������Ŷ�   �������������޶�   ��������������������޶��   ���������������������޶�   ������������������������޶��   �����������������޶�   ����������������޶��   ������Ŷ   �����϶�   ���������Ҷ�   ����������ض   �������ض���   ζ��   ϶��   ������������Ŷ��   �������������������Ķ���   �����������Ķ���   �����������������ض�   ��������Ŷ��   ���޶���   ����������ٶ   ���������Ӷ�   ����Ӷ��   �������ض���   ��������ݶ��   ���������������������ն�   �����������Ķ���   ����¶��   �������������Ķ�   ������������������ն   ��������������ն   ���������������Ķ���   ����϶��   �������������ն�   ��������������Ķ   �������Ŷ���   ����׶��   ������������ض��   ������Ҷ   ��������Ӷ��            HB     zC     �B     �C     �A      @     �B      A     �A     �?               
            �                                                    !   	   '   
   -      3      9      ?      E      K      Q      W      ]      c      i      j      k      q      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $     %   	  &     '   "  (   0  )   7  *   8  +   J  ,   Q  -   _  .   f  /   x  0     1   �  2   �  3   �  4   �  5   �  6   �  7   �  8   �  9   �  :   �  ;   �  <   �  =   �  >   �  ?   �  @   �  A     B     C     D     E     F     G     H   !  I   '  J   1  K   B  L   Z  M   k  N   w  O   {  P   |  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a   �  b     c     d   
  e     f     g     h     i   #  j   )  k   *  l   C  m   O  n   P  o   S  p   T  q   [  r   b  s   j  t   m  u   s  v   y  w   z  x   �  y   �  z   �  {   �  |   �  }   �  ~   �     �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �      �     �     �   3YY5;�  �  PQT�  YY;�  LMY;�  �  PQY;�  YY8;�  �  Y8;�  �  Y8;�	  �  Y8;�
  �  Y8;�  �  Y8;�  �  Y8;�  �  Y8;�  �  Y8;�  �	  Y8;�  �  Y8;�  �
  Y8;�  �  YYY0�  PQV�  �  �  P�(  P�  R�  QR�(  P�  R�  QQT�  PQ�  YY0�  PQV�  T�  T�  �2  PT�  T�  R�  R�  T�  �  Q�  T�  T�  �2  PT�  T�  R�  R�  T�  �  QYY0�  PQV�  ;�  �  PQ�  �  &PT�  T�  QP�  T�  �	  QV�  ;�  T�  T�  �  �  LM�  �  &PT�  T�  Q
P�	  QV�  �  LM�  �  &PT�  T�  QP�  T�  �	  QV�  �  L�  M�  �  &PT�  T�  Q
P�	  QV�  �  L�  M�  �  �  &PT�  T�  QP�  T�  �  QV�  �  LM�  �  &PT�  T�  Q
P�  QV�  �  LM�  �  &PT�  T�  QP�  T�  �  QV�  �  L�  M�  �  &PT�  T�  Q
P�  QV�  �  L�  M�  Y�  �  �  �  Y�  .�  YY0�  PQV�  ;�  LM�  �  )�  �  V�  &�  V�  &�  T�  T�  V�  &T�  T�  P�  T�  Q	T�	  V�  ;�   �,  PPT�  �  T�  QT�  PQT�!  PQQ�  &�  PT�"  �   Q	P�
  �  QV�  �  T�#  P�  Q�  .�  YY0�$  PQV�  ;�%  �  PQ�  ;�&  �  �  )�  �  V�  &�  V�  &�  T�  T�  V�  &T�  T�  P�  T�  Q	T�	  V�  ;�   �,  PPT�  �  T�  QT�  PQT�!  PQQ�  &�  PT�"  �   Q	P�
  �  QV�  �%  PT�  �  T�  Q�  �&  �  Y�  ;�'  P�&  �  T�  PQQ�  T�  PQ�  �  �%  �%  T�  PQ�'  �  Y�  .�%  YY0�(  PQV�  ;�%  �  PQ�  ;�&  �  �  )�  �  V�  &T�  T�  P�  T�  Q
T�  V�  �&  �  �  �%  PT�  �  T�  QY�  ;�'  P�&  �  T�  PQQ�  T�  PQ�  �  �%  �%  T�  PQ�'  �  Y�  .�%  YY0�)  P�  QV�  ;�*  �  PQ�  &�  T�+  PQV�  .�*  �  �  )�  �  V�  �*  �  T�  �  �  ;�'  P�  T�  PQ�  T�  PQQ�  T�  PQ�  �  �*  �*  T�  PQ�'  �  �  �  .�*  YY0�,  P�  QV�  ;�-  �  PQ�  &�  T�+  PQV�  .�-  �  )�  �  V�  �-  �  T�  �  �  ;�'  P�  T�  PQ�  T�  PQQ�  T�  PQ�  �  �-  �-  T�  PQ�'  �  �  �  .�-  YY0�.  P�/  QV�  ;�  �  PQ�  �  ;�0  �  PQ�  �  �0  �(  PQ�  �0  �)  P�  Q�  �0  �,  P�  Q�  �0  �$  PQY�  &�  V�  �0  �  PQY�  �  �0  �  �  �  T�1  P�  Q�  �  T�"  �  T�!  PQ�  �2  P�  �/  Q�  �  �  PQY`  GDSC                  ���Ӷ���   �������޶���   ��������Ŷ��   x                            	            3YY8;�  Y8;�  �  Y`          GDSC   I      �   �     ���ӄ�   ����������Ӷ   ����������������¶��   ���Ӷ���   ���������������Ŷ���   �������Ӷ���   �����ڶ�   �����϶�   �������޶���   ��������Ŷ��   ������Ŷ   ����Ŷ��   �������޶���   �������¶���   ��������Ŷ��   ��������Ҷ��   ����������Ŷ   ���������Ӷ�   ������Ŷ   ��������¶��   ��������Ӷ��   �������ض���   ��������Ӷ��   ��������Ӷ��   �����������Ķ���   ���������Ķ�   ܶ��   ��������ݶ��   ������������¶��   ߶��   ���޶���   �������Ӷ���   ���޶���   ��������Ҷ��   ��������Ҷ��   �������ڶ���   ���������������۶���   �������ض���   ζ��   ϶��   �������ض���   ���Ӷ���   �������Ӷ���   ��������Ķ��   ��Ҷ   ����ض��   ���Ӷ���   �����Ķ�   �����Ŷ�   ��������������������������Ҷ   ����Ӷ��   ��������Ҷ��   ���¶���    ����������������������������Ҷ��   ����������Ŷ    ���������������������������Ҷ���   ���������Ӷ�   ������������������������Ҷ��   ���������������������޶�   ��������������������������Ҷ   �����������������޶�   ��������������������������Ҷ   ������������������������޶��   �������������������������Ҷ�   ����������������޶��   �����������������Ҷ�   ������Ӷ   �����������������Ҷ�   �����������������Ҷ�   �������Ӷ���   �������������������Ӷ���   �������������������������Ҷ�   ��������������������������Ҷ      /root/GlobalVariables         Fish Count:       Types Count:          Max Speed:        View Radius:          View Angle:    	   Borders:          Alignment:        Avoidance:     
   Cohesion:         res://Fish/Fish.tscn                   time_offset    h             �@     �?            @           @@           �@                                                    	   %   
   )      *      1      8      9      E      Q      ]      i      u      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '     (     )   +  *   5  +   6  ,   <  -   H  .   N  /   R  0   V  1   W  2   ^  3   _  4   e  5   k  6   l  7   m  8   s  9   |  :   �  ;   �  <   �  =   �  >   �  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I     J     K     L   .  M   /  N   0  O   7  P   =  Q   C  R   S  S   T  T   U  U   \  V   b  W   h  X   x  Y   y  Z   z  [   �  \   �  ]   �  ^   �  _   �  `   �  a   �  b   �  c   �  d   �  e   �  f   �  g   �  h   �  i   �  j   �  k   �  l   �  m   �  n   �  o   �  p     q     r     s     t     u   !  v   1  w   2  x   3  y   9  z   D  {   O  |   P  }   Q  ~   W     _  �   `  �   a  �   h  �   n  �   ~  �     �   �  �   �  �   �  �   �  �   3YY5;�  �  PQT�  Y5;�  �  PQYY;�  LMYYY0�  PQV�  �%  PQ�  �  ;�  �  T�  �  ;�	  �  T�	  �  �  W�
  �  �  T�  P�  Q�  W�
  �  �  T�  P�  Q�  W�
  �  �  T�  P�  Q�  W�
  �  �  T�  P�  Q�  W�
  �  �  T�  P�  Q�  W�
  �  �  T�  P�  Q�  W�
  �  �  T�  P�  Q�  W�
  �  �  T�  P�  Q�  W�
  �  �  T�  P�	  Q�  �  ;�  ?P�
  Q�  �  ;�  �  �	  �  ;�  �  �  ;�  LM�  ;�  �  �  *�  	�	  V�  �  T�  P�  PQQ�  �?  P�  L�  MQ�  �  �  �  �  �  �  �  )�  �K  P�  R�  QV�  ;�  �  T�  PQ�  W�   T�!  P�  Q�  �  T�"  P�  QT�#  T�$  P�  R�'  PQQ�  �  T�%  �  P�'  PQ�  T�&  R�'  PQ�  T�'  Q�  �  T�(  �'  PQ�  �  �  �  T�)  �  �  �  T�*  �+  P�  L�  MQ�  &�  �  V�  �  �  �  �  �  Y�  �  T�  P�  Q�  �  )�  �  V�  �  T�  �  YYY0�  PQV�  ;�,  �&  PQ�  �  ;�-  �&  PQ�  �  ;�.  �&  PQ�  �  .L�,  R�-  R�.  MYYY0�+  P�/  QV�  ;�0  LM�  )�  �/  V�  &�  �  V�  �0  T�  P�'  PQ�  Q�  '�  �  V�  �0  T�  P�'  PQ�  P�  �  QQ�  '�  �  V�  �0  T�  P�'  PQ�  P�  �  QQ�  '�  �  V�  �0  T�  P�'  PQ�  P�  �  QQ�  '�  �  V�  �0  T�  P�'  PQ�  P�  �  QQ�  .�  P�0  L�  MR�0  L�  MR�0  L�  MR�  QYYY0�1  P�2  QV�  )�  �  V�  �  T�3  �2  �  W�
  �  �  T�4  �  �>  P�2  QYYY0�5  P�2  QV�  )�  �  V�  �  T�6  �2  �  W�
  �  �  T�4  �  �>  P�2  QYYY0�7  P�2  QV�  )�  �  V�  �  T�8  �2  �  W�
  �  �  T�4  �  �>  P�2  QYYY0�9  P�2  QV�  )�  �  V�  �  T�:  �2  �  W�
  �  �  T�4  �  �>  P�2  QYYY0�;  P�2  QV�  )�  �  V�  �  T�<  �2  �  W�
  �  �  T�4  �  �>  P�2  QYYY0�=  P�2  QV�  )�  �  V�  �  T�>  �2  �  W�
  �  �  T�4  �  �>  P�2  QYYY0�?  P�2  QV�  )�  �  V�  �  T�@  �2  �  W�
  �  �  T�4  �	  �>  P�2  QYYY0�A  PQV�  W�
  T�B  W�
  T�B  �  W�C  T�B  W�C  T�B  YYY0�D  PQV�  �E  PQT�F  PQYYY0�G  P�2  QV�  �  T�  �2  �  W�
  �  �  T�4  �  �>  P�2  QYYY0�H  P�2  QV�  �  T�	  �2  �  W�
  �  �  T�4  �  �>  P�2  QY`        shader_type canvas_item;

// Constant Variables
uniform float time_offset = 0.0;
uniform float time_scale = 3.0;
uniform float side_to_side = 2.0;
uniform float pivot = 1.0;
uniform float wave = 5.0;
uniform float black_mask = 1.0;
uniform float white_mask = 0.0;

void vertex() {
	// Dynamic Variables
	float time = (TIME * time_scale) + (6.28318 * time_offset);
	float pivot_angle = cos(time) * 0.1 * pivot;
	mat2 rotation_matrix = mat2(vec2(cos(pivot_angle), -sin(pivot_angle)), vec2(sin(pivot_angle), cos(pivot_angle)));
	float body = (VERTEX.y + 21.0) / 42.0;
	float mask = smoothstep(black_mask, white_mask, 1.0 - body);
	
	// Effects
	VERTEX.x += cos(time) * side_to_side;
	VERTEX.xy = rotation_matrix * VERTEX.xy;
	VERTEX.x += cos(time + body) * wave * mask;
	VERTEX.y -= cos(time*2.0 + body) * wave *.05;
} GDST   *            N  PNG �PNG

   IHDR      *   ���   sRGB ���  IDATH��M�0���˹���3��x�BK:U���y�-_(m�p��@bH"�YM\�,�0�&0�S �-,�0���bfꇑȉ����+�k+�:8H��1�И �P^��$2�j�X�%�LX./�������Zx�{���,��mv�j�T}@ڨ%.�xqZ�9{|T�D@w���umc��Rk`VX=X�����]mh���[�Y����Rؗ�#�#��!��$
� iZ�K�|=��Zr����P\ޢM�/\�gR�>Ǡ    IEND�B`�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/new_fish.png-4edf9e2eb66bf72344ff3b64e8a47cee.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/new_fish.png"
dest_files=[ "res://.import/new_fish.png-4edf9e2eb66bf72344ff3b64e8a47cee.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
          [remap]

path="res://Script/Fish.gdc"
          [remap]

path="res://Script/GlobalVariables.gdc"
               [remap]

path="res://Script/MainScreen.gdc"
    ECFG      _global_script_classes             _global_script_class_icons             application/config/name         Fish Simulation    application/run/main_scene$         res://Scenes/MainScreen.tscn   autoload/GlobalVariables(          *res://Script/GlobalVariables.gd   display/window/size/width            display/window/size/height      �     display/window/stretch/mode         2d   