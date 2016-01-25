.class Lcom/liquable/nemo/friend/SearchCubieIdFragment$2;
.super Ljava/lang/Object;
.source "SearchCubieIdFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 105
    iput-object p1, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$2;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$2;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$2;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    # getter for: Lcom/liquable/nemo/friend/SearchCubieIdFragment;->findCubieIdEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->access$000(Lcom/liquable/nemo/friend/SearchCubieIdFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->hideKeyboard(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 109
    iget-object v0, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$2;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    iget-object v1, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$2;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    # getter for: Lcom/liquable/nemo/friend/SearchCubieIdFragment;->findCubieIdEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->access$000(Lcom/liquable/nemo/friend/SearchCubieIdFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/liquable/nemo/friend/SearchCubieIdFragment;->search(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->access$100(Lcom/liquable/nemo/friend/SearchCubieIdFragment;Ljava/lang/String;)V

    .line 110
    return-void
.end method
