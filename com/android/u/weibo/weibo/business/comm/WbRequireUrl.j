.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/comm/WbRequireUrl
.super java/lang/Object

.field public static final 'ADD_GLANCE_COUNT' Ljava/lang/String;

.field public static final 'ADD_IDOL' Ljava/lang/String;

.field public static final 'ADD_IDOL_BATCH' Ljava/lang/String;

.field public static final 'BASE_URL' Ljava/lang/String;

.field public static final 'BIND_WEIBO' Ljava/lang/String;

.field public static final 'COMMENT_TOPIC' Ljava/lang/String;

.field public static final 'DELETE_COMMENT' Ljava/lang/String;

.field public static final 'DELETE_TWEET' Ljava/lang/String;

.field public static final 'DEL_IDOL' Ljava/lang/String;

.field public static final 'GET_AT_ME_REPLY_LIST' Ljava/lang/Object;

.field public static final 'GET_AT_ME_TWEET_LIST' Ljava/lang/String;

.field public static final 'GET_COMMENT_LIST' Ljava/lang/String;

.field public static final 'GET_COMMENT_LIST_BY_ME' Ljava/lang/String;

.field public static final 'GET_COMMENT_LIST_TO_ME' Ljava/lang/String;

.field public static final 'GET_FANS' Ljava/lang/String;

.field public static final 'GET_HASHTAGS_LIST' Ljava/lang/String;

.field public static final 'GET_IDOLS' Ljava/lang/String;

.field public static final 'GET_IDOLS_CHANGE' Ljava/lang/String;

.field public static final 'GET_JIMEIRECOMMEND' Ljava/lang/String;

.field public static final 'GET_PRAISE_TWEET_LIST' Ljava/lang/String;

.field public static final 'GET_PUBLIC_TWEET_LIST' Ljava/lang/String;

.field public static final 'GET_RECOMMEND' Ljava/lang/String;

.field public static final 'GET_RELATION_OTHER' Ljava/lang/String;

.field public static final 'GET_RETWEET_LIST' Ljava/lang/String;

.field public static final 'GET_SINGLE_TWEET' Ljava/lang/String;

.field public static final 'GET_TALLYS' Ljava/lang/String;

.field public static final 'GET_TWEET_LIST' Ljava/lang/String;

.field public static final 'GET_USER_PAGE' Ljava/lang/String;

.field public static final 'GET_USER_TWEET_LIST' Ljava/lang/String;

.field public static final 'GET_USER_TWEET_LIST_INCLUDE_NAME' Ljava/lang/String;

.field public static final 'GET_WEIBO_MSG_UNREAD_COUNT' Ljava/lang/String;

.field public static final 'LIKE_WEIBO' Ljava/lang/String;

.field public static final 'NOTLIKE_WEIBO' Ljava/lang/String;

.field public static final 'POST_TOPIC' Ljava/lang/String;

.field public static final 'REPLY_COMMENT' Ljava/lang/String;

.field public static final 'REPOST_TOPIC' Ljava/lang/String;

.field public static final 'UPLOAD_IMAGE' Ljava/lang/String;

.field public static final 'get_praise_userlit' Ljava/lang/String;

.method static <clinit>()V
invokestatic com/product/android/business/config/Configuration/getTweetServerURL()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "user_api/tally/uid/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_USER_PAGE Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "user_api/weibobind"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BIND_WEIBO Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "user_api/unread"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_WEIBO_MSG_UNREAD_COUNT Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "relation_api/idol"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/ADD_IDOL Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "relation_api/idol_batch/idol_uid_str/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/ADD_IDOL_BATCH Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "relation_api/idol/idol_uid/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/DEL_IDOL Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "relation_api/idols/uid/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_IDOLS Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "relation_api/fans/uid/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_FANS Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "relation_api/status/other_uid/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_RELATION_OTHER Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "relation_api/idols_change"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_IDOLS_CHANGE Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "relation_api/recommend"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_RECOMMEND Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "relation_api/friend_mining"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_JIMEIRECOMMEND Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "topic_api/repost"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/REPOST_TOPIC Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "topic_api/square"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_PUBLIC_TWEET_LIST Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "topic_api/user"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_USER_TWEET_LIST Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "topic_api/user_web"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_USER_TWEET_LIST_INCLUDE_NAME Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "topic_api/timeline"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_TWEET_LIST Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "topic_api/topic"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_SINGLE_TWEET Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "topic_api/topic"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/POST_TOPIC Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "topic_api/topic"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/DELETE_TWEET Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "topic_api/mentionme"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_AT_ME_TWEET_LIST Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "topic_api/repolist"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_RETWEET_LIST Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "topic_api/glances"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/ADD_GLANCE_COUNT Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "topic_api/tallys"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_TALLYS Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "reply_api/reply"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/COMMENT_TOPIC Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "reply_api/comment"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/REPLY_COMMENT Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "reply_api/reply"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/DELETE_COMMENT Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "reply_api/replylist"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_COMMENT_LIST Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "reply_api/myreplys"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_COMMENT_LIST_BY_ME Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "reply_api/replyme"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_COMMENT_LIST_TO_ME Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "reply_api/mentionme"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_AT_ME_REPLY_LIST Ljava/lang/Object;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "search_api/topic"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_HASHTAGS_LIST Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "praise_api/tome"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_PRAISE_TWEET_LIST Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "praise_api/praise"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/LIKE_WEIBO Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "praise_api/praise"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/NOTLIKE_WEIBO Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "praise_api/praisors"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/get_praise_userlit Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "upload_api/image"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/UPLOAD_IMAGE Ljava/lang/String;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method
