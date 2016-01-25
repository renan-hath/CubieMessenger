.class Lcom/liquable/nemo/chat/WidgetManager$6;
.super Ljava/lang/Object;
.source "WidgetManager.java"

# interfaces
.implements Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/WidgetManager;->initInputMessageWidget(ZLcom/liquable/nemo/chat/widget/InputMessageWidget$OnSendButtonClickedListener;Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;Ljava/lang/Runnable;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/WidgetManager;

.field final synthetic val$onSecretModeListener:Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/WidgetManager;Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/WidgetManager;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/liquable/nemo/chat/WidgetManager$6;->this$0:Lcom/liquable/nemo/chat/WidgetManager;

    iput-object p2, p0, Lcom/liquable/nemo/chat/WidgetManager$6;->val$onSecretModeListener:Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSecretModeChanged(Z)V
    .locals 1
    .param p1, "isSecret"    # Z

    .prologue
    .line 224
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager$6;->this$0:Lcom/liquable/nemo/chat/WidgetManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/WidgetManager;->onResume()V

    .line 225
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager$6;->val$onSecretModeListener:Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager$6;->val$onSecretModeListener:Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;

    invoke-interface {v0, p1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;->onSecretModeChanged(Z)V

    .line 228
    :cond_0
    return-void
.end method
