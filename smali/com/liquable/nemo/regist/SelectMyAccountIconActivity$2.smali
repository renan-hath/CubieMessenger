.class Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$2;
.super Ljava/lang/Object;
.source "SelectMyAccountIconActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$2;->this$0:Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 122
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$2;->this$0:Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    # invokes: Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->onOK()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->access$200(Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;)V

    .line 124
    const/4 v0, 0x1

    .line 126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
