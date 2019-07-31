.bytecode 50.0
.class final synchronized com/nd/android/u/tast/experience/activity/DateWidgetActivity$10
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/tast/experience/activity/DateWidgetActivity/initMoreExperience(Landroid/app/Activity;Landroid/widget/ListView;Lcom/nd/android/u/tast/experience/adapter/MoreExperienceAdapter;Lcom/nd/android/u/tast/experience/view/FullAttendanceListener;Landroid/os/Handler;)V
.inner class static final inner com/nd/android/u/tast/experience/activity/DateWidgetActivity$10
.inner class inner com/nd/android/u/tast/experience/activity/DateWidgetActivity$10$1

.field final synthetic 'val$activity' Landroid/app/Activity;

.field final synthetic 'val$adapter' Lcom/nd/android/u/tast/experience/adapter/MoreExperienceAdapter;

.field final synthetic 'val$handler' Landroid/os/Handler;

.field final synthetic 'val$listener' Lcom/nd/android/u/tast/experience/view/FullAttendanceListener;

.field final synthetic 'val$lv' Landroid/widget/ListView;

.method <init>(Landroid/os/Handler;Landroid/app/Activity;Lcom/nd/android/u/tast/experience/view/FullAttendanceListener;Lcom/nd/android/u/tast/experience/adapter/MoreExperienceAdapter;Landroid/widget/ListView;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/activity/DateWidgetActivity$10/val$handler Landroid/os/Handler;
aload 0
aload 2
putfield com/nd/android/u/tast/experience/activity/DateWidgetActivity$10/val$activity Landroid/app/Activity;
aload 0
aload 3
putfield com/nd/android/u/tast/experience/activity/DateWidgetActivity$10/val$listener Lcom/nd/android/u/tast/experience/view/FullAttendanceListener;
aload 0
aload 4
putfield com/nd/android/u/tast/experience/activity/DateWidgetActivity$10/val$adapter Lcom/nd/android/u/tast/experience/adapter/MoreExperienceAdapter;
aload 0
aload 5
putfield com/nd/android/u/tast/experience/activity/DateWidgetActivity$10/val$lv Landroid/widget/ListView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 6
.limit stack 2
.end method

.method public run()V
.catch com/common/android/utils/http/HttpAuthException from L0 to L1 using L2
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L3
.catch com/common/android/utils/http/HttpServerException from L0 to L1 using L4
.catch com/common/android/utils/http/HttpException from L0 to L1 using L5
invokestatic java/lang/System/currentTimeMillis()J
pop2
new com/nd/android/u/tast/com/AjaxCom
dup
invokespecial com/nd/android/u/tast/com/AjaxCom/<init>()V
astore 8
aconst_null
astore 7
L0:
aload 8
invokevirtual com/nd/android/u/tast/com/AjaxCom/getGetItemList()Lorg/json/JSONObject;
astore 8
L1:
aload 8
astore 7
L6:
aload 7
ifnonnull L7
aload 0
getfield com/nd/android/u/tast/experience/activity/DateWidgetActivity$10/val$handler Landroid/os/Handler;
ifnull L8
aload 0
getfield com/nd/android/u/tast/experience/activity/DateWidgetActivity$10/val$handler Landroid/os/Handler;
iconst_m1
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L8:
return
L2:
astore 8
aload 8
invokevirtual com/common/android/utils/http/HttpAuthException/printStackTrace()V
goto L6
L3:
astore 8
aload 8
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
goto L6
L4:
astore 8
aload 8
invokevirtual com/common/android/utils/http/HttpServerException/printStackTrace()V
goto L6
L5:
astore 8
aload 8
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L6
L7:
iconst_0
istore 3
iconst_3
istore 2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 8
aload 7
ldc "code"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
sipush 200
if_icmpeq L9
aload 0
getfield com/nd/android/u/tast/experience/activity/DateWidgetActivity$10/val$handler Landroid/os/Handler;
ifnull L8
aload 0
getfield com/nd/android/u/tast/experience/activity/DateWidgetActivity$10/val$handler Landroid/os/Handler;
iconst_m1
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
L9:
aload 7
ldc "items"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 9
aload 9
ifnull L10
aload 9
invokevirtual org/json/JSONArray/length()I
ifne L11
L10:
aload 0
getfield com/nd/android/u/tast/experience/activity/DateWidgetActivity$10/val$handler Landroid/os/Handler;
ifnull L8
aload 0
getfield com/nd/android/u/tast/experience/activity/DateWidgetActivity$10/val$handler Landroid/os/Handler;
iconst_m1
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
L11:
aload 9
invokevirtual org/json/JSONArray/length()I
istore 6
iconst_0
istore 1
L12:
iload 1
iload 6
if_icmpge L13
aload 9
iload 1
invokevirtual org/json/JSONArray/optJSONObject(I)Lorg/json/JSONObject;
astore 10
aload 10
ldc "isopen"
iconst_2
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;I)I
iconst_1
if_icmpeq L14
L15:
iload 1
iconst_1
iadd
istore 1
goto L12
L14:
new com/nd/android/u/tast/experience/bean/MoreExperienceItem
dup
invokespecial com/nd/android/u/tast/experience/bean/MoreExperienceItem/<init>()V
astore 11
aload 11
aload 10
ldc "itemname"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setItemname(Ljava/lang/String;)V
aload 11
aload 10
ldc "condition"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setCondition(Ljava/lang/String;)V
aload 11
aload 10
ldc "exp"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setExp(I)V
aload 11
aload 10
ldc "money"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setMoney(I)V
aload 11
aload 10
ldc "flower"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setFlower(I)V
aload 10
ldc "status"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 4
iload 4
iconst_1
if_icmpne L16
aload 11
getstatic com/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS/FINISH Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS;
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setStatus(Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS;)V
L17:
aload 11
aload 10
ldc "itemcode"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setItemCode(Ljava/lang/String;)V
aload 11
aload 10
ldc "url"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setUrl(Ljava/lang/String;)V
aload 11
aload 10
ldc "statusimg"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setStatusImg(I)V
aload 8
aload 11
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 11
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/getmItemCode()Ljava/lang/String;
ldc "FULLSIGN"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L15
aload 11
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/getStatusImg()I
istore 4
aload 11
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/getExp()I
istore 5
aload 11
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/getStatusImg()I
ifne L18
aload 11
getstatic com/nd/android/u/tast/experience/activity/DateWidgetActivity/signStatusArray [Ljava/lang/String;
iconst_0
aaload
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setItemname(Ljava/lang/String;)V
iload 5
istore 3
iload 4
istore 2
goto L15
L16:
iload 4
iconst_2
if_icmpne L19
aload 11
getstatic com/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS/FAIL Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS;
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setStatus(Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS;)V
goto L17
L19:
aload 11
getstatic com/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS/NORMAL Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS;
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setStatus(Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS;)V
goto L17
L18:
aload 11
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/getStatusImg()I
iconst_1
if_icmpne L20
aload 11
getstatic com/nd/android/u/tast/experience/activity/DateWidgetActivity/signStatusArray [Ljava/lang/String;
iconst_1
aaload
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setItemname(Ljava/lang/String;)V
iload 5
istore 3
iload 4
istore 2
goto L15
L20:
aload 11
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/getStatusImg()I
iconst_2
if_icmpne L21
aload 11
getstatic com/nd/android/u/tast/experience/activity/DateWidgetActivity/signStatusArray [Ljava/lang/String;
iconst_2
aaload
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setItemname(Ljava/lang/String;)V
iload 5
istore 3
iload 4
istore 2
goto L15
L21:
iload 5
istore 3
iload 4
istore 2
aload 11
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/getStatusImg()I
iconst_3
if_icmpne L15
aload 11
getstatic com/nd/android/u/tast/experience/activity/DateWidgetActivity/signStatusArray [Ljava/lang/String;
iconst_2
aaload
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setItemname(Ljava/lang/String;)V
iload 5
istore 3
iload 4
istore 2
goto L15
L13:
aload 8
invokeinterface java/util/List/isEmpty()Z 0
ifeq L22
aload 0
getfield com/nd/android/u/tast/experience/activity/DateWidgetActivity$10/val$handler Landroid/os/Handler;
ifnull L8
aload 0
getfield com/nd/android/u/tast/experience/activity/DateWidgetActivity$10/val$handler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
L22:
aload 0
getfield com/nd/android/u/tast/experience/activity/DateWidgetActivity$10/val$handler Landroid/os/Handler;
ifnull L23
aload 0
getfield com/nd/android/u/tast/experience/activity/DateWidgetActivity$10/val$handler Landroid/os/Handler;
ldc_w 123658
iload 3
iload 2
invokevirtual android/os/Handler/obtainMessage(III)Landroid/os/Message;
astore 9
aload 0
getfield com/nd/android/u/tast/experience/activity/DateWidgetActivity$10/val$handler Landroid/os/Handler;
aload 9
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
L23:
aload 0
getfield com/nd/android/u/tast/experience/activity/DateWidgetActivity$10/val$activity Landroid/app/Activity;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "moreexpdata"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 7
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveKey(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/tast/experience/activity/DateWidgetActivity$10/val$activity Landroid/app/Activity;
new com/nd/android/u/tast/experience/activity/DateWidgetActivity$10$1
dup
aload 0
iload 2
iload 3
aload 8
invokespecial com/nd/android/u/tast/experience/activity/DateWidgetActivity$10$1/<init>(Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity$10;IILjava/util/List;)V
invokevirtual android/app/Activity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 12
.limit stack 7
.end method
