.bytecode 50.0
.class public synchronized com/nd/rj/common/microblogging/help/ConfigSet
.super java/lang/Object

.field public static final 'CONFIG_NAME' Ljava/lang/String; = "Association"

.field public static final 'FOLLOW_KEY' Ljava/lang/String; = "follow"

.field public static final 'NICK_KEY' Ljava/lang/String; = "nick"

.field public static final 'TYPE_KEY' Ljava/lang/String; = "type"

.field private 'mEditor' Landroid/content/SharedPreferences$Editor;

.field private 'mSet' Landroid/content/SharedPreferences;

.field private 'm_nType' I

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
ldc "Association"
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
putfield com/nd/rj/common/microblogging/help/ConfigSet/mSet Landroid/content/SharedPreferences;
aload 0
aload 0
getfield com/nd/rj/common/microblogging/help/ConfigSet/mSet Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
putfield com/nd/rj/common/microblogging/help/ConfigSet/mEditor Landroid/content/SharedPreferences$Editor;
return
.limit locals 2
.limit stack 4
.end method

.method public containsFollowState()Z
aload 0
getfield com/nd/rj/common/microblogging/help/ConfigSet/mSet Landroid/content/SharedPreferences;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "follow"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/rj/common/microblogging/help/ConfigSet/m_nType I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface android/content/SharedPreferences/contains(Ljava/lang/String;)Z 1
ireturn
.limit locals 1
.limit stack 3
.end method

.method public containsFollowState(I)Z
aload 0
getfield com/nd/rj/common/microblogging/help/ConfigSet/mSet Landroid/content/SharedPreferences;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "follow"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface android/content/SharedPreferences/contains(Ljava/lang/String;)Z 1
ireturn
.limit locals 2
.limit stack 3
.end method

.method public getBindState(IZ)Z
aload 0
getfield com/nd/rj/common/microblogging/help/ConfigSet/mSet Landroid/content/SharedPreferences;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "type"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iload 2
invokeinterface android/content/SharedPreferences/getBoolean(Ljava/lang/String;Z)Z 2
ireturn
.limit locals 3
.limit stack 3
.end method

.method public getBindState(Z)Z
aload 0
getfield com/nd/rj/common/microblogging/help/ConfigSet/mSet Landroid/content/SharedPreferences;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "type"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/rj/common/microblogging/help/ConfigSet/m_nType I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iload 1
invokeinterface android/content/SharedPreferences/getBoolean(Ljava/lang/String;Z)Z 2
ireturn
.limit locals 2
.limit stack 3
.end method

.method public getFollowState(IZ)Z
aload 0
getfield com/nd/rj/common/microblogging/help/ConfigSet/mSet Landroid/content/SharedPreferences;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "follow"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iload 2
invokeinterface android/content/SharedPreferences/getBoolean(Ljava/lang/String;Z)Z 2
ireturn
.limit locals 3
.limit stack 3
.end method

.method public getFollowState(Z)Z
aload 0
getfield com/nd/rj/common/microblogging/help/ConfigSet/mSet Landroid/content/SharedPreferences;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "follow"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/rj/common/microblogging/help/ConfigSet/m_nType I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iload 1
invokeinterface android/content/SharedPreferences/getBoolean(Ljava/lang/String;Z)Z 2
ireturn
.limit locals 2
.limit stack 3
.end method

.method public getUserNick()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/microblogging/help/ConfigSet/mSet Landroid/content/SharedPreferences;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "nick"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/rj/common/microblogging/help/ConfigSet/m_nType I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
invokeinterface android/content/SharedPreferences/getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
areturn
.limit locals 1
.limit stack 3
.end method

.method public getUserNick(I)Ljava/lang/String;
aload 0
getfield com/nd/rj/common/microblogging/help/ConfigSet/mSet Landroid/content/SharedPreferences;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "nick"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
invokeinterface android/content/SharedPreferences/getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
areturn
.limit locals 2
.limit stack 3
.end method

.method public removeFollowState(I)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "follow"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
aload 0
getfield com/nd/rj/common/microblogging/help/ConfigSet/mSet Landroid/content/SharedPreferences;
aload 2
invokeinterface android/content/SharedPreferences/contains(Ljava/lang/String;)Z 1
ifeq L0
aload 0
getfield com/nd/rj/common/microblogging/help/ConfigSet/mEditor Landroid/content/SharedPreferences$Editor;
aload 2
invokeinterface android/content/SharedPreferences$Editor/remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 1
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
L0:
return
.limit locals 3
.limit stack 2
.end method

.method public removeUserNick(I)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "nick"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
aload 0
getfield com/nd/rj/common/microblogging/help/ConfigSet/mSet Landroid/content/SharedPreferences;
aload 2
invokeinterface android/content/SharedPreferences/contains(Ljava/lang/String;)Z 1
ifeq L0
aload 0
getfield com/nd/rj/common/microblogging/help/ConfigSet/mEditor Landroid/content/SharedPreferences$Editor;
aload 2
invokeinterface android/content/SharedPreferences$Editor/remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 1
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
L0:
return
.limit locals 3
.limit stack 2
.end method

.method public saveBindState(IZ)V
aload 0
getfield com/nd/rj/common/microblogging/help/ConfigSet/mEditor Landroid/content/SharedPreferences$Editor;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "type"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iload 2
invokeinterface android/content/SharedPreferences$Editor/putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor; 2
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 3
.limit stack 3
.end method

.method public saveBindState(Z)V
aload 0
getfield com/nd/rj/common/microblogging/help/ConfigSet/mEditor Landroid/content/SharedPreferences$Editor;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "type"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/rj/common/microblogging/help/ConfigSet/m_nType I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iload 1
invokeinterface android/content/SharedPreferences$Editor/putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor; 2
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 2
.limit stack 3
.end method

.method public saveFollowState(IZ)V
aload 0
getfield com/nd/rj/common/microblogging/help/ConfigSet/mEditor Landroid/content/SharedPreferences$Editor;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "follow"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iload 2
invokeinterface android/content/SharedPreferences$Editor/putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor; 2
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 3
.limit stack 3
.end method

.method public saveFollowState(Z)V
aload 0
getfield com/nd/rj/common/microblogging/help/ConfigSet/mEditor Landroid/content/SharedPreferences$Editor;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "follow"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/rj/common/microblogging/help/ConfigSet/m_nType I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iload 1
invokeinterface android/content/SharedPreferences$Editor/putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor; 2
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 2
.limit stack 3
.end method

.method public saveUserNick(ILjava/lang/String;)V
aload 0
getfield com/nd/rj/common/microblogging/help/ConfigSet/mEditor Landroid/content/SharedPreferences$Editor;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "nick"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 2
invokeinterface android/content/SharedPreferences$Editor/putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 2
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 3
.limit stack 3
.end method

.method public saveUserNick(Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/microblogging/help/ConfigSet/mEditor Landroid/content/SharedPreferences$Editor;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "nick"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/rj/common/microblogging/help/ConfigSet/m_nType I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 1
invokeinterface android/content/SharedPreferences$Editor/putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 2
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 2
.limit stack 3
.end method

.method public setSnsType(I)V
aload 0
iload 1
putfield com/nd/rj/common/microblogging/help/ConfigSet/m_nType I
return
.limit locals 2
.limit stack 2
.end method
