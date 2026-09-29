package dao;

import model.Produce;
import util.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProduceDAO {

    public boolean addProduce(Produce produce) {
        boolean status = false;
        String query = "INSERT INTO produce (crop_name, quantity, price, location) VALUES (?, ?, ?, ?)";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {

            ps.setString(1, produce.getCropName());
            ps.setDouble(2, produce.getQuantity());
            ps.setDouble(3, produce.getPrice());
            ps.setString(4, produce.getLocation());

            int result = ps.executeUpdate();
            if (result > 0) {
                status = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }

    public List<Produce> getAllProduce() {
        List<Produce> produceList = new ArrayList<>();
        String query = "SELECT * FROM produce";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Produce produce = new Produce(
                        rs.getInt("id"),
                        rs.getString("crop_name"),
                        rs.getDouble("quantity"),
                        rs.getDouble("price"),
                        rs.getString("location")
                );
                produceList.add(produce);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return produceList;
    }
}