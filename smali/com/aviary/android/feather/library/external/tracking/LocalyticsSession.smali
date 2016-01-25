.class public final Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;
.super Ljava/lang/Object;
.source "LocalyticsSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$Pair;,
        Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;,
        Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;
    }
.end annotation


# static fields
.field static final CLOSE_EVENT:Ljava/lang/String;

.field static final FLOW_EVENT:Ljava/lang/String;

.field static final OPEN_EVENT:Ljava/lang/String;

.field static final OPT_IN_EVENT:Ljava/lang/String;

.field static final OPT_OUT_EVENT:Ljava/lang/String;

.field protected static final sIsUploadingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLocalyticsSessionHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLocalyticsSessionIntrinsicLock:[Ljava/lang/Object;

.field private static final sSessionHandlerThread:Landroid/os/HandlerThread;

.field protected static final sUploadHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSessionHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 159
    const-string/jumbo v0, "%s:%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "com.localytics.android"

    aput-object v2, v1, v3

    const-string/jumbo v2, "open"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->OPEN_EVENT:Ljava/lang/String;

    .line 164
    const-string/jumbo v0, "%s:%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "com.localytics.android"

    aput-object v2, v1, v3

    const-string/jumbo v2, "close"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->CLOSE_EVENT:Ljava/lang/String;

    .line 169
    const-string/jumbo v0, "%s:%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "com.localytics.android"

    aput-object v2, v1, v3

    const-string/jumbo v2, "opt_in"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->OPT_IN_EVENT:Ljava/lang/String;

    .line 174
    const-string/jumbo v0, "%s:%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "com.localytics.android"

    aput-object v2, v1, v3

    const-string/jumbo v2, "opt_out"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->OPT_OUT_EVENT:Ljava/lang/String;

    .line 179
    const-string/jumbo v0, "%s:%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "com.localytics.android"

    aput-object v2, v1, v3

    const-string/jumbo v2, "flow"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->FLOW_EVENT:Ljava/lang/String;

    .line 189
    const-class v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->getHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->sSessionHandlerThread:Landroid/os/HandlerThread;

    .line 199
    const-class v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->getHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->sUploadHandlerThread:Landroid/os/HandlerThread;

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->sLocalyticsSessionHandlerMap:Ljava/util/Map;

    .line 230
    new-array v0, v3, [Ljava/lang/Object;

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->sLocalyticsSessionIntrinsicLock:[Ljava/lang/Object;

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->sIsUploadingMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "appVersion"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    if-nez p1, :cond_0

    .line 269
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "context cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 271
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "key cannot be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    :cond_1
    const-string/jumbo v1, "com.localytics.android"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 283
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.test.IsolatedContext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.test.RenamingDelegatingContext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 285
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "context.getPackageName() returned %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.test.RenamingDelegatingContext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget v1, Lcom/aviary/android/feather/library/external/tracking/Constants;->CURRENT_API_LEVEL:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .end local p1    # "context":Landroid/content/Context;
    :cond_3
    iput-object p1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->mContext:Landroid/content/Context;

    .line 301
    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->sLocalyticsSessionIntrinsicLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 303
    :try_start_0
    sget-object v1, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->sLocalyticsSessionHandlerMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;

    .line 305
    .local v0, "handler":Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;
    if-nez v0, :cond_4

    .line 307
    new-instance v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;

    .end local v0    # "handler":Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;
    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->sSessionHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v1, p2, p3, v3}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Looper;)V

    .line 308
    .restart local v0    # "handler":Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;
    sget-object v1, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->sLocalyticsSessionHandlerMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 319
    :cond_4
    iput-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->mSessionHandler:Landroid/os/Handler;

    .line 301
    monitor-exit v2

    .line 321
    return-void

    .line 301
    .end local v0    # "handler":Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static convertDimensionsToAttributes(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 867
    .local p0, "customDimensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 869
    .local v0, "attributes":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 871
    const/4 v2, 0x0

    .line 872
    .local v2, "index":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 895
    .end local v2    # "index":I
    :cond_0
    return-object v0

    .line 872
    .restart local v2    # "index":I
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 874
    .local v1, "element":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 876
    sget-object v4, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 878
    :cond_3
    const/4 v4, 0x1

    if-ne v4, v2, :cond_4

    .line 880
    sget-object v4, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 882
    :cond_4
    const/4 v4, 0x2

    if-ne v4, v2, :cond_5

    .line 884
    sget-object v4, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 886
    :cond_5
    const/4 v4, 0x3

    if-ne v4, v2, :cond_2

    .line 888
    sget-object v4, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static getHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 209
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 211
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 218
    return-object v0
.end method


# virtual methods
.method public close(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "customDimensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x2

    .line 487
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->mSessionHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 495
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->mSessionHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->mSessionHandler:Landroid/os/Handler;

    new-instance v2, Ljava/util/TreeMap;

    invoke-static {p1}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->convertDimensionsToAttributes(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public open(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "customDimensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 412
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->mSessionHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 420
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->mSessionHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->mSessionHandler:Landroid/os/Handler;

    new-instance v2, Ljava/util/TreeMap;

    invoke-static {p1}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->convertDimensionsToAttributes(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .locals 12
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "customDimensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 659
    const-string/jumbo v4, "%s:%s"

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object p1, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 661
    .local v1, "eventString":Ljava/lang/String;
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 663
    iget-object v4, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->mSessionHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->mSessionHandler:Landroid/os/Handler;

    new-instance v6, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$Pair;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v11, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 700
    :goto_0
    return-void

    .line 671
    :cond_0
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 673
    .local v3, "remappedAttributes":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    .line 675
    iget-object v4, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 676
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 682
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    if-eqz p3, :cond_2

    .line 684
    invoke-static {p3}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->convertDimensionsToAttributes(Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 695
    :cond_2
    iget-object v4, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->mSessionHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->mSessionHandler:Landroid/os/Handler;

    new-instance v6, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$Pair;

    .line 697
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    invoke-direct {v6, v1, v7}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 695
    invoke-virtual {v5, v11, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 676
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 678
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "%s:%s"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v6, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public upload()V
    .locals 4

    .prologue
    .line 733
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->mSessionHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;->mSessionHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 734
    return-void
.end method
