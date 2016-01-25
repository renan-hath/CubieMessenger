.class Lcom/liquable/nemo/android/service/ChattingAndroidService$10$1;
.super Ljava/lang/Object;
.source "ChattingAndroidService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/android/service/ChattingAndroidService$10;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/android/service/ChattingAndroidService$10;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/android/service/ChattingAndroidService$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/android/service/ChattingAndroidService$10;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$10$1;->this$1:Lcom/liquable/nemo/android/service/ChattingAndroidService$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$10$1;->this$1:Lcom/liquable/nemo/android/service/ChattingAndroidService$10;

    iget-object v0, v0, Lcom/liquable/nemo/android/service/ChattingAndroidService$10;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->interruptConnection(Z)V

    .line 451
    return-void
.end method
