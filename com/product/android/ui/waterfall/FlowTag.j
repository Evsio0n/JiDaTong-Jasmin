.bytecode 50.0
.class public synchronized com/product/android/ui/waterfall/FlowTag
.super java/lang/Object

.field public 'departName' Ljava/lang/String;

.field private 'flowId' I

.field private 'flowViewClickListener' Lcom/product/android/ui/waterfall/FlowViewOnClickListener;

.field public 'isUserShow' Z

.field private 'itemWidth' I

.field public 'mSignText' Ljava/lang/String;

.field public 'mUserNameText' Ljava/lang/String;

.field private 'mbHRRecognizeEntrance' Z

.field private 'mbIsHRHome' Z

.field public 'sysAvatarId' I

.field public 'uid' J

.field public 'unitid' I

.field public final 'what' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/product/android/ui/waterfall/FlowTag/what I
aload 0
ldc ""
putfield com/product/android/ui/waterfall/FlowTag/departName Ljava/lang/String;
aload 0
iconst_0
putfield com/product/android/ui/waterfall/FlowTag/mbHRRecognizeEntrance Z
aload 0
iconst_0
putfield com/product/android/ui/waterfall/FlowTag/mbIsHRHome Z
aload 0
iconst_0
putfield com/product/android/ui/waterfall/FlowTag/isUserShow Z
aload 0
ldc ""
putfield com/product/android/ui/waterfall/FlowTag/mUserNameText Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/ui/waterfall/FlowTag/mSignText Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public getClickListener()Lcom/product/android/ui/waterfall/FlowViewOnClickListener;
aload 0
getfield com/product/android/ui/waterfall/FlowTag/flowViewClickListener Lcom/product/android/ui/waterfall/FlowViewOnClickListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDepartName()Ljava/lang/String;
aload 0
getfield com/product/android/ui/waterfall/FlowTag/departName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFlowId()I
aload 0
getfield com/product/android/ui/waterfall/FlowTag/flowId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getIsEntrance()Z
aload 0
getfield com/product/android/ui/waterfall/FlowTag/mbHRRecognizeEntrance Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getIsHRHome()Z
aload 0
getfield com/product/android/ui/waterfall/FlowTag/mbIsHRHome Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItemWidth()I
aload 0
getfield com/product/android/ui/waterfall/FlowTag/itemWidth I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUid()J
aload 0
getfield com/product/android/ui/waterfall/FlowTag/uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUnitid()I
aload 0
getfield com/product/android/ui/waterfall/FlowTag/unitid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setClickListener(Lcom/product/android/ui/waterfall/FlowViewOnClickListener;)V
aload 0
aload 1
putfield com/product/android/ui/waterfall/FlowTag/flowViewClickListener Lcom/product/android/ui/waterfall/FlowViewOnClickListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setDepartName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/ui/waterfall/FlowTag/departName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setFlowId(I)V
aload 0
iload 1
putfield com/product/android/ui/waterfall/FlowTag/flowId I
return
.limit locals 2
.limit stack 2
.end method

.method public setIsEntrance(Z)V
aload 0
iload 1
putfield com/product/android/ui/waterfall/FlowTag/mbHRRecognizeEntrance Z
return
.limit locals 2
.limit stack 2
.end method

.method public setIsHRHome(Z)V
aload 0
iload 1
putfield com/product/android/ui/waterfall/FlowTag/mbIsHRHome Z
return
.limit locals 2
.limit stack 2
.end method

.method public setItemWidth(I)V
aload 0
iload 1
putfield com/product/android/ui/waterfall/FlowTag/itemWidth I
return
.limit locals 2
.limit stack 2
.end method

.method public setUid(J)V
aload 0
lload 1
putfield com/product/android/ui/waterfall/FlowTag/uid J
return
.limit locals 3
.limit stack 3
.end method

.method public setUnitid(I)V
aload 0
iload 1
putfield com/product/android/ui/waterfall/FlowTag/unitid I
return
.limit locals 2
.limit stack 2
.end method
