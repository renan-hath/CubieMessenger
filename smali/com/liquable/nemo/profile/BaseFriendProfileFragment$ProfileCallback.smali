.class public interface abstract Lcom/liquable/nemo/profile/BaseFriendProfileFragment$ProfileCallback;
.super Ljava/lang/Object;
.source "BaseFriendProfileFragment.java"

# interfaces
.implements Lcom/liquable/nemo/BaseFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/profile/BaseFriendProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProfileCallback"
.end annotation


# virtual methods
.method public abstract goToChatting(Lcom/liquable/nemo/group/model/ChatGroup;)V
.end method

.method public abstract goToFriendProfile(Ljava/lang/String;)V
.end method

.method public abstract goToMain()V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method
