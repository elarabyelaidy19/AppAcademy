require '01_hanoi'

describe TowersOfHanoiGame do
  subject(:towers) { TowersOfHanoiGame.new }

  describe "#render" do
    it "pretty-prints stacks" do
      expect(towers.render).to eq("Tower 0:  3  2  1\nTower 1:  \nTower 2:  \n")
    end

    it "prints shorter stacks" do
      towers.move(0, 2)
      towers.move(0, 1)
      expect(towers.render).to eq("Tower 0:  3\nTower 1:  2\nTower 2:  1\n")
    end
  end

  