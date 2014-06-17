using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using GameJSON;

public class Fake_User : BaseUser
{
    public Fake_User(BaseJson json)
    {
        base.SetCards(json.cards, json.user.uid);
        base.SetItems(json.items);
        this.SetInfo(json.user);
    }
}