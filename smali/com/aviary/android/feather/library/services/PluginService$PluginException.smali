.class public final Lcom/aviary/android/feather/library/services/PluginService$PluginException;
.super Ljava/lang/Exception;
.source "PluginService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/services/PluginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PluginException"
.end annotation


# instance fields
.field private code:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 90
    iput p2, p0, Lcom/aviary/android/feather/library/services/PluginService$PluginException;->code:I

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "code"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 95
    iput p2, p0, Lcom/aviary/android/feather/library/services/PluginService$PluginException;->code:I

    .line 96
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/aviary/android/feather/library/services/PluginService$PluginException;->code:I

    return v0
.end method
