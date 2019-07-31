.bytecode 50.0
.class public synchronized com/product/android/commonInterface/task/OapScore
.super java/lang/Object
.implements java/io/Serializable

.field private static final 'TAG' Ljava/lang/String; = "OapScore"

.field private 'code' I

.field private 'level' I

.field private 'lotterychance' I

.field private 'maxscore' I

.field private 'minscore' I

.field private 'msg' Ljava/lang/String;

.field private 'signstatus' I

.field private 'totalexp' I

.field private 'totalmoney' I

.field private 'uid' I

.field private 'unitid' I

.field private 'updatetime' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getTag()Ljava/lang/String;
ldc "OapScore"
areturn
.limit locals 0
.limit stack 1
.end method

.method public clearScoreData()V
aload 0
iconst_0
putfield com/product/android/commonInterface/task/OapScore/code I
aload 0
ldc ""
putfield com/product/android/commonInterface/task/OapScore/msg Ljava/lang/String;
aload 0
iconst_0
putfield com/product/android/commonInterface/task/OapScore/uid I
aload 0
iconst_0
putfield com/product/android/commonInterface/task/OapScore/totalexp I
aload 0
iconst_0
putfield com/product/android/commonInterface/task/OapScore/lotterychance I
aload 0
iconst_0
putfield com/product/android/commonInterface/task/OapScore/totalmoney I
aload 0
iconst_0
putfield com/product/android/commonInterface/task/OapScore/updatetime I
aload 0
iconst_0
putfield com/product/android/commonInterface/task/OapScore/signstatus I
aload 0
iconst_0
putfield com/product/android/commonInterface/task/OapScore/level I
aload 0
iconst_0
putfield com/product/android/commonInterface/task/OapScore/minscore I
aload 0
iconst_0
putfield com/product/android/commonInterface/task/OapScore/maxscore I
return
.limit locals 1
.limit stack 2
.end method

.method public getCode()I
aload 0
getfield com/product/android/commonInterface/task/OapScore/code I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getLevel()I
aload 0
getfield com/product/android/commonInterface/task/OapScore/level I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getLotterychance()I
aload 0
getfield com/product/android/commonInterface/task/OapScore/lotterychance I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMaxscore()I
aload 0
getfield com/product/android/commonInterface/task/OapScore/maxscore I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMinscore()I
aload 0
getfield com/product/android/commonInterface/task/OapScore/minscore I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMsg()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/task/OapScore/msg Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSignstatus()I
aload 0
getfield com/product/android/commonInterface/task/OapScore/signstatus I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTotalexp()I
aload 0
getfield com/product/android/commonInterface/task/OapScore/totalexp I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTotalmoney()I
aload 0
getfield com/product/android/commonInterface/task/OapScore/totalmoney I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUid()I
aload 0
getfield com/product/android/commonInterface/task/OapScore/uid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUnitid()I
aload 0
getfield com/product/android/commonInterface/task/OapScore/unitid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUpdatetime()I
aload 0
getfield com/product/android/commonInterface/task/OapScore/updatetime I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setCode(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/task/OapScore/code I
return
.limit locals 2
.limit stack 2
.end method

.method public setLevel(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/task/OapScore/level I
return
.limit locals 2
.limit stack 2
.end method

.method public setLotterychance(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/task/OapScore/lotterychance I
return
.limit locals 2
.limit stack 2
.end method

.method public setMaxscore(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/task/OapScore/maxscore I
return
.limit locals 2
.limit stack 2
.end method

.method public setMinscore(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/task/OapScore/minscore I
return
.limit locals 2
.limit stack 2
.end method

.method public setMsg(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/task/OapScore/msg Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setScoreData(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/task/OapScore/code I
aload 0
aload 1
ldc "msg"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/task/OapScore/msg Ljava/lang/String;
aload 1
ldc "score"
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
astore 1
aload 0
aload 1
ldc "uid"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/task/OapScore/uid I
aload 0
aload 1
ldc "totalexp"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/task/OapScore/totalexp I
aload 0
aload 1
ldc "lotterychance"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/task/OapScore/lotterychance I
aload 0
aload 1
ldc "totalmoney"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/task/OapScore/totalmoney I
aload 0
aload 1
ldc "updatetime"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/task/OapScore/updatetime I
aload 0
aload 1
ldc "signstatus"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/task/OapScore/signstatus I
aload 1
ldc "levelinfo"
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
astore 1
aload 0
aload 1
ldc "level"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/task/OapScore/level I
aload 0
aload 1
ldc "minscore"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/task/OapScore/minscore I
aload 0
aload 1
ldc "maxscore"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/task/OapScore/maxscore I
return
.limit locals 2
.limit stack 3
.end method

.method public setSignstatus(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/task/OapScore/signstatus I
return
.limit locals 2
.limit stack 2
.end method

.method public setTotalexp(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/task/OapScore/totalexp I
return
.limit locals 2
.limit stack 2
.end method

.method public setTotalmoney(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/task/OapScore/totalmoney I
return
.limit locals 2
.limit stack 2
.end method

.method public setUid(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/task/OapScore/uid I
return
.limit locals 2
.limit stack 2
.end method

.method public setUnitid(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/task/OapScore/unitid I
return
.limit locals 2
.limit stack 2
.end method

.method public setUpdatetime(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/task/OapScore/updatetime I
return
.limit locals 2
.limit stack 2
.end method
