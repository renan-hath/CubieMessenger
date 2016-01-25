.class Lcom/liquable/nemo/sdk/ConnectActivity$3;
.super Ljava/lang/Object;
.source "ConnectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sdk/ConnectActivity;->displayAuthorizeDialog(Lcom/liquable/nemo/model/openapi/OpenApiAppDto;Lcom/liquable/nemo/sdk/model/ConnectParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sdk/ConnectActivity;

.field final synthetic val$loginCredential:Lcom/liquable/nemo/sdk/model/ConnectParameters;

.field final synthetic val$openApiAppDto:Lcom/liquable/nemo/model/openapi/OpenApiAppDto;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sdk/ConnectActivity;Lcom/liquable/nemo/model/openapi/OpenApiAppDto;Lcom/liquable/nemo/sdk/model/ConnectParameters;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sdk/ConnectActivity;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/liquable/nemo/sdk/ConnectActivity$3;->this$0:Lcom/liquable/nemo/sdk/ConnectActivity;

    iput-object p2, p0, Lcom/liquable/nemo/sdk/ConnectActivity$3;->val$openApiAppDto:Lcom/liquable/nemo/model/openapi/OpenApiAppDto;

    iput-object p3, p0, Lcom/liquable/nemo/sdk/ConnectActivity$3;->val$loginCredential:Lcom/liquable/nemo/sdk/model/ConnectParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity$3;->this$0:Lcom/liquable/nemo/sdk/ConnectActivity;

    iget-object v1, p0, Lcom/liquable/nemo/sdk/ConnectActivity$3;->val$openApiAppDto:Lcom/liquable/nemo/model/openapi/OpenApiAppDto;

    iget-object v2, p0, Lcom/liquable/nemo/sdk/ConnectActivity$3;->val$loginCredential:Lcom/liquable/nemo/sdk/model/ConnectParameters;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/sdk/ConnectActivity;->getAccessToken(Lcom/liquable/nemo/model/openapi/OpenApiAppDto;Lcom/liquable/nemo/sdk/model/ConnectParameters;)V

    .line 126
    iget-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity$3;->this$0:Lcom/liquable/nemo/sdk/ConnectActivity;

    # getter for: Lcom/liquable/nemo/sdk/ConnectActivity;->loadingView:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/sdk/ConnectActivity;->access$300(Lcom/liquable/nemo/sdk/ConnectActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity$3;->this$0:Lcom/liquable/nemo/sdk/ConnectActivity;

    # getter for: Lcom/liquable/nemo/sdk/ConnectActivity;->authorizeLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/sdk/ConnectActivity;->access$400(Lcom/liquable/nemo/sdk/ConnectActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    return-void
.end method
