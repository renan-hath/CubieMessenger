.class public Lcom/liquable/nemo/util/RemoteAccessLog$RemoteAccessLogFactory;
.super Ljava/lang/Object;
.source "RemoteAccessLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/RemoteAccessLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteAccessLogFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/util/RemoteAccessLog$RemoteAccessLogFactory$FileRemoteAccessLog;,
        Lcom/liquable/nemo/util/RemoteAccessLog$RemoteAccessLogFactory$EmptyRemoteAccessLog;
    }
.end annotation


# static fields
.field private static remoteAccessLog:Lcom/liquable/nemo/util/RemoteAccessLog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    sget-object v0, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/liquable/nemo/util/Profiler;->isProfiing:Z

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    new-instance v0, Lcom/liquable/nemo/util/RemoteAccessLog$RemoteAccessLogFactory$EmptyRemoteAccessLog;

    invoke-direct {v0, v1}, Lcom/liquable/nemo/util/RemoteAccessLog$RemoteAccessLogFactory$EmptyRemoteAccessLog;-><init>(Lcom/liquable/nemo/util/RemoteAccessLog$1;)V

    sput-object v0, Lcom/liquable/nemo/util/RemoteAccessLog$RemoteAccessLogFactory;->remoteAccessLog:Lcom/liquable/nemo/util/RemoteAccessLog;

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_1
    new-instance v0, Lcom/liquable/nemo/util/RemoteAccessLog$RemoteAccessLogFactory$FileRemoteAccessLog;

    invoke-direct {v0, v1}, Lcom/liquable/nemo/util/RemoteAccessLog$RemoteAccessLogFactory$FileRemoteAccessLog;-><init>(Lcom/liquable/nemo/util/RemoteAccessLog$1;)V

    sput-object v0, Lcom/liquable/nemo/util/RemoteAccessLog$RemoteAccessLogFactory;->remoteAccessLog:Lcom/liquable/nemo/util/RemoteAccessLog;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static dummy()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/liquable/nemo/util/RemoteAccessLog$RemoteAccessLogFactory$EmptyRemoteAccessLog;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/liquable/nemo/util/RemoteAccessLog$RemoteAccessLogFactory$EmptyRemoteAccessLog;-><init>(Lcom/liquable/nemo/util/RemoteAccessLog$1;)V

    sput-object v0, Lcom/liquable/nemo/util/RemoteAccessLog$RemoteAccessLogFactory;->remoteAccessLog:Lcom/liquable/nemo/util/RemoteAccessLog;

    .line 52
    return-void
.end method

.method public static getLogger()Lcom/liquable/nemo/util/RemoteAccessLog;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/liquable/nemo/util/RemoteAccessLog$RemoteAccessLogFactory;->remoteAccessLog:Lcom/liquable/nemo/util/RemoteAccessLog;

    return-object v0
.end method
