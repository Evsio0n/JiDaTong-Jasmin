.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/bean/TopicInfo
.super java/lang/Object
.implements com/common/android/utils/parser/BaseType

.field public static final 'CATEGORY_ATTACH' Ljava/lang/String; = "attach"

.field public static final 'CATEGORY_IMAGE' Ljava/lang/String; = "image"

.field public static final 'CATEGORY_LONGTEXT' Ljava/lang/String; = "longtext"

.field public static final 'CATEGORY_RANK' Ljava/lang/String; = "u_rank"

.field public static final 'CATEGORY_TEXT' Ljava/lang/String; = "text"

.field public static final 'HAS_PRAISED' I = 1


.field public static final 'NOT_PRAISED' I = 0


.field public static final 'TYPE_FORWARD' Ljava/lang/String; = "forward"

.field public 'article' Ljava/lang/String;

.field public 'attach' Lcom/android/u/weibo/weibo/business/bean/AttachList;

.field public 'category' Ljava/lang/String;

.field public 'content' Ljava/lang/String;

.field public 'contentSS' Landroid/text/SpannableString;

.field public 'extra_id' Ljava/lang/String;

.field public 'forwards' I

.field public 'from_string' Ljava/lang/String;

.field public 'glances' I

.field public 'group_id' J

.field public 'image' Lcom/android/u/weibo/weibo/business/bean/WbImageList;

.field public 'isFailToSend' Z

.field public 'isOnlySina' Z

.field public 'isSend360Pic' Z

.field public 'localCreateAt' J

.field public 'location' Ljava/lang/String;

.field public 'post_time' J

.field public 'praised' Z

.field public 'praises' I

.field public 'rankingUserList' Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;

.field public 'replys' I

.field public 'request_id' J

.field public 'root_tid' J

.field public 'root_topic' Lcom/android/u/weibo/weibo/business/bean/RootTopic;

.field public 'showTime' Ljava/lang/String;

.field public 'tid' J

.field public 'type' Ljava/lang/String;

.field public 'unit_id' J

.field public 'user' Lcom/product/android/commonInterface/weibo/WbUserInfo;

.field public 'weibo_tid' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
aload 0
iconst_0
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/isFailToSend Z
return
.limit locals 1
.limit stack 2
.end method

.method public getUidsForRank()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Ljava/lang/Long;>;"
.catch java/lang/NumberFormatException from L0 to L1 using L2
.catch java/lang/NumberFormatException from L3 to L4 using L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 0
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/extra_id Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L5
L6:
aload 3
areturn
L5:
aload 0
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/extra_id Ljava/lang/String;
ldc ","
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 4
aload 4
ifnull L6
L0:
aload 4
arraylength
istore 2
L1:
iconst_0
istore 1
L7:
iload 1
iload 2
if_icmpge L6
L3:
aload 3
aload 4
iload 1
aaload
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L4:
iload 1
iconst_1
iadd
istore 1
goto L7
L2:
astore 4
aload 4
invokevirtual java/lang/NumberFormatException/printStackTrace()V
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public isPraised()I
aload 0
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setPraised(I)V
iload 1
iconst_1
if_icmpne L0
aload 0
iconst_1
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
return
L0:
aload 0
iconst_0
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
return
.limit locals 2
.limit stack 2
.end method
