.class final Lcom/aviary/android/feather/library/services/HiResService$InternalHandler;
.super Landroid/os/Handler;
.source "HiResService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/services/HiResService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/library/services/HiResService;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/services/HiResService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/aviary/android/feather/library/services/HiResService$InternalHandler;->this$0:Lcom/aviary/android/feather/library/services/HiResService;

    .line 37
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 38
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 43
    return-void
.end method
