FasdUAS 1.101.10   ��   ��    k             l      ��  ��    ^ XThis is the "root" script.  Run this script to
demonstrate calling the other two files.      � 	 	 � T h i s   i s   t h e   " r o o t "   s c r i p t .     R u n   t h i s   s c r i p t   t o 
 d e m o n s t r a t e   c a l l i n g   t h e   o t h e r   t w o   f i l e s .     
  
 l     ��������  ��  ��        l      ��  ��   �� The following lines set up the path to the other files assuming that this script file is in the same folder as they are. It will work if launched as an application, but may not work if run from within Script Editor, because "me" will be the Script Editor, giving (in general) the wrong path.  Sometimes it will work on the second try.  Weird.  In real life, you might want to give a full path or path relative to home.      �  H   T h e   f o l l o w i n g   l i n e s   s e t   u p   t h e   p a t h   t o   t h e   o t h e r   f i l e s   a s s u m i n g   t h a t   t h i s   s c r i p t   f i l e   i s   i n   t h e   s a m e   f o l d e r   a s   t h e y   a r e .   I t   w i l l   w o r k   i f   l a u n c h e d   a s   a n   a p p l i c a t i o n ,   b u t   m a y   n o t   w o r k   i f   r u n   f r o m   w i t h i n   S c r i p t   E d i t o r ,   b e c a u s e   " m e "   w i l l   b e   t h e   S c r i p t   E d i t o r ,   g i v i n g   ( i n   g e n e r a l )   t h e   w r o n g   p a t h .     S o m e t i m e s   i t   w i l l   w o r k   o n   t h e   s e c o n d   t r y .     W e i r d .     I n   r e a l   l i f e ,   y o u   m i g h t   w a n t   t o   g i v e   a   f u l l   p a t h   o r   p a t h   r e l a t i v e   t o   h o m e .        l     ����  O        r        c        n        m   	 ��
�� 
cfol  l   	 ����  I   	�� ��
�� .earsffdralis        afdr   f    ��  ��  ��    m    ��
�� 
TEXT  o      ���� 0 mypath myPath  m       �                                                                                  MACS   alis    b  JMiniHD                    ��tH+    {
Finder.app                                                      W�01�        ����  	                CoreServices    ���      �0�      { �� ��  .JMiniHD:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    J M i n i H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��         l     ��������  ��  ��      ! " ! l     �� # $��   # ; 5 Technique #1.  Run a handler in another .scptd file.    $ � % % j   T e c h n i q u e   # 1 .     R u n   a   h a n d l e r   i n   a n o t h e r   . s c p t d   f i l e . "  & ' & l    (���� ( r     ) * ) b     + , + o    ���� 0 mypath myPath , m     - - � . . ( H a n d l e r L i b r a r y . s c p t d * o      ���� 0 otherscript otherScript��  ��   '  / 0 / l   ! 1���� 1 r    ! 2 3 2 l    4���� 4 I   �� 5��
�� .sysoloadscpt        file 5 4    �� 6
�� 
file 6 o    ���� 0 otherscript otherScript��  ��  ��   3 o      ���� 0 	mylibrary 	myLibrary��  ��   0  7 8 7 l  " 4 9���� 9 O   " 4 : ; : k   & 3 < <  = > = I   & +�������� 0 sayhi sayHi��  ��   >  ?�� ? I   , 3�� @���� 0 sayit sayIt @  A B A m   - . C C � D D  B y e B  E�� E m   . /���� ��  ��  ��   ; o   " #���� 0 	mylibrary 	myLibrary��  ��   8  F G F l     ��������  ��  ��   G  H I H l     �� J K��   J _ Y Technique #2.  Run the other script application directly.  Pass variables as parameters.    K � L L �   T e c h n i q u e   # 2 .     R u n   t h e   o t h e r   s c r i p t   a p p l i c a t i o n   d i r e c t l y .     P a s s   v a r i a b l e s   a s   p a r a m e t e r s . I  M N M l  5 : O���� O r   5 : P Q P b   5 8 R S R o   5 6���� 0 mypath myPath S m   6 7 T T � U U  O t h e r A p p . a p p Q o      ���� 0 thecall theCall��  ��   N  V W V l  ; J X���� X I  ; J�� Y Z
�� .sysodsct****        scpt Y 4   ; ?�� [
�� 
file [ o   = >���� 0 thecall theCall Z �� \��
�� 
plst \ J   @ F ] ]  ^ _ ^ m   @ C ` ` � a a  A p p _  b�� b m   C D���� ��  ��  ��  ��   W  c d c l     ��������  ��  ��   d  e�� e l     ��������  ��  ��  ��       �� f g��   f ��
�� .aevtoappnull  �   � **** g �� h���� i j��
�� .aevtoappnull  �   � **** h k     J k k   l l  & m m  / n n  7 o o  M p p  V����  ��  ��   i   j  �������� -���������� C�� T���� `��
�� .earsffdralis        afdr
�� 
cfol
�� 
TEXT�� 0 mypath myPath�� 0 otherscript otherScript
�� 
file
�� .sysoloadscpt        file�� 0 	mylibrary 	myLibrary�� 0 sayhi sayHi�� 0 sayit sayIt�� 0 thecall theCall
�� 
plst
�� .sysodsct****        scpt�� K� )j �,�&E�UO��%E�O*��/j E�O� *j+ 
O*�ll+ UO��%E�O*��/�a mlvl ascr  ��ޭ