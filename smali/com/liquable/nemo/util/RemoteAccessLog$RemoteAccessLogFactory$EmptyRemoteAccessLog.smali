.class Lcom/liquable/nemo/util/RemoteAccessLog$RemoteAccessLogFactory$EmptyRemoteAccessLog;
.super Ljava/lang/Object;
.source "RemoteAccessLog.java"

# interfaces
.implements Lcom/liquable/nemo/util/RemoteAccessLog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/RemoteAccessLog$RemoteAccessLogFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyRemoteAccessLog"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/util/RemoteAccessLog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/util/RemoteAccessLog$1;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/liquable/nemo/util/RemoteAccessLog$RemoteAccessLogFactory$EmptyRemoteAccessLog;-><init>()V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 20
    return-void
.end method
