.class Lcom/liquable/nemo/widget/SearchBarWidget$3;
.super Ljava/lang/Object;
.source "SearchBarWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/widget/SearchBarWidget;->init(ILcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/widget/SearchBarWidget;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/widget/SearchBarWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/widget/SearchBarWidget;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/liquable/nemo/widget/SearchBarWidget$3;->this$0:Lcom/liquable/nemo/widget/SearchBarWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/liquable/nemo/widget/SearchBarWidget$3;->this$0:Lcom/liquable/nemo/widget/SearchBarWidget;

    # getter for: Lcom/liquable/nemo/widget/SearchBarWidget;->searchEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/liquable/nemo/widget/SearchBarWidget;->access$000(Lcom/liquable/nemo/widget/SearchBarWidget;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method
