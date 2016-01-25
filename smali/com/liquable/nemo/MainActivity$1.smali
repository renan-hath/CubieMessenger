.class Lcom/liquable/nemo/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/actionbarsherlock/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/MainActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/MainActivity;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/liquable/nemo/MainActivity$1;->this$0:Lcom/liquable/nemo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Lcom/actionbarsherlock/app/ActionBar$Tab;
    .param p2, "transaction"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 145
    return-void
.end method

.method public onTabSelected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 2
    .param p1, "tab"    # Lcom/actionbarsherlock/app/ActionBar$Tab;
    .param p2, "transaction"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/liquable/nemo/MainActivity$1;->this$0:Lcom/liquable/nemo/MainActivity;

    # getter for: Lcom/liquable/nemo/MainActivity;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/liquable/nemo/MainActivity;->access$600(Lcom/liquable/nemo/MainActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/MainActivity$1;->this$0:Lcom/liquable/nemo/MainActivity;

    # getter for: Lcom/liquable/nemo/MainActivity;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/liquable/nemo/MainActivity;->access$600(Lcom/liquable/nemo/MainActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public onTabUnselected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Lcom/actionbarsherlock/app/ActionBar$Tab;
    .param p2, "transaction"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 157
    return-void
.end method
