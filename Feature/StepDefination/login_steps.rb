


Given("I navigate to values page") do |url|

  #$session.visit url
  visit url

end

When("I am on Values page") do


   $session.visit $homepage
    visit $homepage
end


Then("I should see right number of values appears on the screen") do

  def test_table_values
    ##### Waiting for the values to appear
    assert @wait.until {
      find(id: "lbl_val_1" == "$122,354.24")

      return true

    }
    return false

    assert @wait.until {
      find(id: "lbl_val_2" == "$599.00")

      return true

    }
    return false

    assert @wait.until {
      find(id: "lbl_val_3" == "$850,139.99")
      return true

    }
    return false

    assert @wait.until {
      find(id: "lbl_val_4" == "$23,329.50")
      return true
    }

    return false
    assert @wait.until {
      find(id: "lbl_val_5" == "$566.27")
      return true
    }
    return false

  end


And("Values on the screen should be greater than zero") do


  if params[:Value1].present?
    if params[:Value1].to_i > 0

      return true
    else

      return false
    end
  end

  if params[:Value2].present?
    if params[:Value2].to_i > 0

      return true
    else

      return false
    end
  end

  if params[:Value3].present?
    if params[:Value3].to_i > 0

      return true
    else

      return false
    end
  end

  if params[:Value4].present?
    if params[:Value4].to_i > 0

      return true
    else

      return false
    end
  end

  if params[:Value5].present?
    if params[:Value5].to_i > 0

      return true
    else

      return false
    end
  end

end
end

And("Total balance should be sum of the listed values on the screen") do


  array.map(&:value).inject(0, &:+)


end


And("values should be formatted as currencies") do

end