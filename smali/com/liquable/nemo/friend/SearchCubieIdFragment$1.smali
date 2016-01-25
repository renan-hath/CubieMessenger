.class Lcom/liquable/nemo/friend/SearchCubieIdFragment$1;
.super Ljava/lang/Object;
.source "SearchCubieIdFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/SearchCubieIdFragment;->initCubieIdView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/SearchCubieIdFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$1;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 96
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$1;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$1;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    # getter for: Lcom/liquable/nemo/friend/SearchCubieIdFragment;->findCubieIdEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->access$000(Lcom/liquable/nemo/friend/SearchCubieIdFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->hideKeyboard(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 98
    iget-object v0, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$1;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    iget-object v1, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$1;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    # getter for: Lcom/liquable/nemo/friend/SearchCubieIdFragment;->findCubieIdEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->access$000(Lcom/liquable/nemo/friend/SearchCubieIdFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/liquable/nemo/friend/SearchCubieIdFragment;->search(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->access$100(Lcom/liquable/nemo/friend/SearchCubieIdFragment;Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
