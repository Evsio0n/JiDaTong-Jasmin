.bytecode 50.0
.class public synchronized com/nd/android/u/tast/experience/bean/MoreExperienceItem
.super java/lang/Object
.implements java/io/Serializable

.field private static final 'serialVersionUID' J = -5477355126853212445L


.field private 'conditionM' I

.field private 'conditionN' I

.field private 'expiredate' Ljava/lang/String;

.field private 'isnew' I

.field private 'itemCode' Ljava/lang/String;

.field private 'itemid' J

.field private 'mCondition' Ljava/lang/String;

.field private 'mExp' I

.field private 'mFlower' I

.field private 'mIsopen' Z

.field private 'mItemDesc' Ljava/lang/String;

.field private 'mItemname' Ljava/lang/String;

.field private 'mMoney' I

.field private 'mStatus' Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS;

.field private 'mUrl' Ljava/lang/String;

.field private 'parttakers' Ljava/lang/String;

.field private 'scoreType' I

.field private 'statusimg' I

.field private 'times' I

.field private 'type' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/mIsopen Z
return
.limit locals 1
.limit stack 2
.end method

.method public getCondition()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/mCondition Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getConditionM()I
aload 0
getfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/conditionM I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getConditionN()I
aload 0
getfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/conditionN I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getExp()I
aload 0
getfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/mExp I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getExpiredate()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/expiredate Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFlower()I
aload 0
getfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/mFlower I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getIsnew()I
aload 0
getfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/isnew I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItemid()J
aload 0
getfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/itemid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getItemname()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/mItemname Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMoney()I
aload 0
getfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/mMoney I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getParttakers()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/parttakers Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getScoreType()I
aload 0
getfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/scoreType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getStatus()Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS;
aload 0
getfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/mStatus Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getStatusImg()I
aload 0
getfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/statusimg I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTimes()I
aload 0
getfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/times I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getType()I
aload 0
getfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/type I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUrl()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/mUrl Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getmItemCode()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/itemCode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getmItemDesc()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/mItemDesc Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isIsopen()Z
aload 0
getfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/mIsopen Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setCondition(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/mCondition Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setConditionM(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/conditionM I
return
.limit locals 2
.limit stack 2
.end method

.method public setConditionN(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/conditionN I
return
.limit locals 2
.limit stack 2
.end method

.method public setExp(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/mExp I
return
.limit locals 2
.limit stack 2
.end method

.method public setExpiredate(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/expiredate Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setFlower(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/mFlower I
return
.limit locals 2
.limit stack 2
.end method

.method public setIsnew(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/isnew I
return
.limit locals 2
.limit stack 2
.end method

.method public setIsopen(Z)V
aload 0
iload 1
putfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/mIsopen Z
return
.limit locals 2
.limit stack 2
.end method

.method public setItemCode(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/itemCode Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setItemid(J)V
aload 0
lload 1
putfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/itemid J
return
.limit locals 3
.limit stack 3
.end method

.method public setItemname(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/mItemname Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setMoney(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/mMoney I
return
.limit locals 2
.limit stack 2
.end method

.method public setParttakers(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/parttakers Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setScoreType(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/scoreType I
return
.limit locals 2
.limit stack 2
.end method

.method public setStatus(Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/mStatus Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS;
return
.limit locals 2
.limit stack 2
.end method

.method public setStatusImg(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/statusimg I
return
.limit locals 2
.limit stack 2
.end method

.method public setTimes(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/times I
return
.limit locals 2
.limit stack 2
.end method

.method public setType(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/type I
return
.limit locals 2
.limit stack 2
.end method

.method public setUrl(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/mUrl Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setmItemDesc(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/bean/MoreExperienceItem/mItemDesc Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
