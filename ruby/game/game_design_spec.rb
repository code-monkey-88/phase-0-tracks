require_relative 'game_design'

describe GuessingGame do
  let(:guess) { GuessingGame.new("firstword") }

  it "stores the initial word given on initialization" do
    expect(guess.initialize('firstword')).to eq "firstword"
  end

  it "it increments the counter each time a user-input is received" do
    guess.guess_count("")
    expect(list.get_items).to eq ["do the dishes", "mow the lawn", "mop"]
  end

  it "deletes an item" do
    list.delete_item("do the dishes")
    expect(list.get_items).to eq ["mow the lawn"]
  end

  it "retrieves an item by index" do
    expect(list.get_item(0)).to eq "do the dishes"
  end

end
