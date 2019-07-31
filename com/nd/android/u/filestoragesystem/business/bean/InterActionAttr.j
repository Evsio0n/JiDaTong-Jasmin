.bytecode 50.0
.class public synchronized com/nd/android/u/filestoragesystem/business/bean/InterActionAttr
.super java/lang/Object
.implements com/nd/android/u/filestoragesystem/externalInterface/IInterActionAttr

.field private static final 'serialVersionUID' J = 1L


.field private 'mFavorited' Z

.field private 'mFavorties' I

.field private 'mPraised' Z

.field private 'mPraises' I

.field private 'mReplys' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getFavorited()Z
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/InterActionAttr/mFavorited Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFavorites()I
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/InterActionAttr/mFavorties I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getPraised()Z
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/InterActionAttr/mPraised Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getPraises()I
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/InterActionAttr/mPraises I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getReplys()I
aload 0
getfield com/nd/android/u/filestoragesystem/business/bean/InterActionAttr/mReplys I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setFavortied(I)V
iload 1
iconst_1
if_icmpne L0
aload 0
iconst_1
putfield com/nd/android/u/filestoragesystem/business/bean/InterActionAttr/mFavorited Z
return
L0:
aload 0
iconst_0
putfield com/nd/android/u/filestoragesystem/business/bean/InterActionAttr/mFavorited Z
return
.limit locals 2
.limit stack 2
.end method

.method public setFavortied(Z)V
aload 0
iload 1
putfield com/nd/android/u/filestoragesystem/business/bean/InterActionAttr/mFavorited Z
return
.limit locals 2
.limit stack 2
.end method

.method public setFavorties(I)V
aload 0
iload 1
putfield com/nd/android/u/filestoragesystem/business/bean/InterActionAttr/mFavorties I
return
.limit locals 2
.limit stack 2
.end method

.method public setPraised(I)V
iload 1
iconst_1
if_icmpne L0
aload 0
iconst_1
putfield com/nd/android/u/filestoragesystem/business/bean/InterActionAttr/mPraised Z
return
L0:
aload 0
iconst_0
putfield com/nd/android/u/filestoragesystem/business/bean/InterActionAttr/mPraised Z
return
.limit locals 2
.limit stack 2
.end method

.method public setPraised(Z)V
aload 0
iload 1
putfield com/nd/android/u/filestoragesystem/business/bean/InterActionAttr/mPraised Z
return
.limit locals 2
.limit stack 2
.end method

.method public setPraises(I)V
aload 0
iload 1
putfield com/nd/android/u/filestoragesystem/business/bean/InterActionAttr/mPraises I
return
.limit locals 2
.limit stack 2
.end method

.method public setReplys(I)V
aload 0
iload 1
putfield com/nd/android/u/filestoragesystem/business/bean/InterActionAttr/mReplys I
return
.limit locals 2
.limit stack 2
.end method
