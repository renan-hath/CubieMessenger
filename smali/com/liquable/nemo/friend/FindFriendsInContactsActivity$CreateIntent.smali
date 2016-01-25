.class public Lcom/liquable/nemo/friend/FindFriendsInContactsActivity$CreateIntent;
.super Landroid/content/Intent;
.source "FindFriendsInContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/friend/FindFriendsInContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateIntent"
.end annotation


# static fields
.field private static final IMPORT_IMMEDIATELY:Ljava/lang/String; = "importImmediately"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "importImmediately"    # Z

    .prologue
    .line 20
    const-class v0, Lcom/liquable/nemo/friend/FindFriendsInContactsActivity$CreateIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    const-string/jumbo v0, "importImmediately"

    invoke-virtual {p0, v0, p2}, Lcom/liquable/nemo/friend/FindFriendsInContactsActivity$CreateIntent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 22
    return-void
.end method

.method public static isImportImmediately(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 14
    const-string/jumbo v0, "importImmediately"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
