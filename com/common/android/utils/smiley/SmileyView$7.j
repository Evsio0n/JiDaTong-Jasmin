.bytecode 50.0
.class synchronized com/common/android/utils/smiley/SmileyView$7
.super java/lang/Object
.implements com/product/android/utils/MyPasteListener$onPasteCatSmileyListener
.enclosing method com/common/android/utils/smiley/SmileyView
.inner class inner com/common/android/utils/smiley/SmileyView$7

.field final synthetic 'this$0' Lcom/common/android/utils/smiley/SmileyView;

.method <init>(Lcom/common/android/utils/smiley/SmileyView;)V
aload 0
aload 1
putfield com/common/android/utils/smiley/SmileyView$7/this$0 Lcom/common/android/utils/smiley/SmileyView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPasteCatSmiley(I)V
new com/common/android/utils/smiley/Smiley
dup
invokespecial com/common/android/utils/smiley/Smiley/<init>()V
astore 2
aload 2
iload 1
putfield com/common/android/utils/smiley/Smiley/id I
aload 0
getfield com/common/android/utils/smiley/SmileyView$7/this$0 Lcom/common/android/utils/smiley/SmileyView;
invokestatic com/common/android/utils/smiley/SmileyView/access$1300(Lcom/common/android/utils/smiley/SmileyView;)Lcom/common/android/utils/smiley/SmileyView$OnSelectGifListener;
ifnull L0
aload 0
getfield com/common/android/utils/smiley/SmileyView$7/this$0 Lcom/common/android/utils/smiley/SmileyView;
invokestatic com/common/android/utils/smiley/SmileyView/access$1300(Lcom/common/android/utils/smiley/SmileyView;)Lcom/common/android/utils/smiley/SmileyView$OnSelectGifListener;
aload 2
invokeinterface com/common/android/utils/smiley/SmileyView$OnSelectGifListener/onSelectGifSmiley(Lcom/common/android/utils/smiley/Smiley;)V 1
L0:
return
.limit locals 3
.limit stack 2
.end method
